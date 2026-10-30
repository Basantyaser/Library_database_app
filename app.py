import math
import os
import random
import sqlite3
import string
from tkinter import messagebox

import customtkinter as ctk

import theme
import json

#makes sure the paths are correct
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
JSON_FILE = os.path.join(BASE_DIR, "bookrecords.json")
DB_FILE = os.path.join(BASE_DIR, "library.db")


class App(ctk.CTk):
    def __init__(self, db):
        super().__init__()
        self.title("Library Management System")
        self.geometry("1080x560")

        books_page = BooksPage(self, db)
        books_page.pack(fill="both", expand=True)


class BooksPage(ctk.CTkFrame):
    def __init__(self, parent, db):
        super().__init__(parent)
        self.db = db

        # title
        title = ctk.CTkLabel(self, text="Books")
        theme.label_title(title)
        title.pack(anchor="w", padx=10, pady=(10, 0))

        # top bar
        top_bar = ctk.CTkFrame(self, fg_color="transparent")
        top_bar.pack(fill="x", padx=10, pady=10)

        self.search_entry = ctk.CTkEntry(top_bar, width=250, placeholder_text="Search books...")
        theme.entry_default(self.search_entry)
        self.search_entry.pack(side="left")
        self.search_entry.bind("<Return>", lambda event: self.search())   # Enter = Search button

        search_btn = ctk.CTkButton(top_bar, text="Search", width=90, command=self.search)
        theme.button_secondary(search_btn)
        search_btn.pack(side="left", padx=10)

        add_btn = ctk.CTkButton(top_bar, text="Add new book", command=self.add_book)
        theme.button_primary(add_btn)
        add_btn.pack(side="left")

        # table header
        columns = ["Book ID", "Book name", "Category", "Author", "Actions"]

        header = ctk.CTkFrame(self)
        header.pack(fill="x", padx=10)

        for i, text in enumerate(columns):
            header.grid_columnconfigure(i, weight=1, uniform="col")
            label = ctk.CTkLabel(header, text=text, anchor="w")
            theme.label_default(label)
            label.grid(row=0, column=i, sticky="w", padx=5, pady=5)

        # footer: "Showing x to y" on the left, page buttons on the right
        footer = ctk.CTkFrame(self, fg_color="transparent")
        footer.pack(side="bottom", fill="x", padx=10, pady=(0, 10))

        self.info_label = ctk.CTkLabel(footer, text="")
        theme.label_small(self.info_label)
        self.info_label.pack(side="left")

        self.pager = ctk.CTkFrame(footer, fg_color="transparent")
        self.pager.pack(side="right")

        # table
        self.table = ctk.CTkScrollableFrame(self)
        self.table.pack(fill="both", expand=True, padx=10, pady=10)

        self.rows = {}              # book id -> the widgets of that row (used for the highlight)
        self.search_text = ""       # what the last search was for ("" = show everything)
        self.all_books = self.get_books()   # every book matching the search, all pages
        self.go_to_page(1)

    KEYS = ["id", "title", "category", "authorname"]
    PAGE_SIZE = 8      # books per page

    def show_books(self, books):
        # full redraw: only used when the page first loads
        for widget in self.table.winfo_children():
            widget.destroy()
        self.rows = {}

        for book in books:
            self.add_row(book)

    def add_row(self, book):
        # every row is its own frame, so it can be changed or removed alone
        row = ctk.CTkFrame(self.table, fg_color="transparent")
        row.pack(fill="x")
        for i in range(5):
            row.grid_columnconfigure(i, weight=1, uniform="col")

        info = {"frame": row, "book": book, "labels": {}}

        for c, key in enumerate(self.KEYS):
            label = ctk.CTkLabel(row, text=book[key], anchor="w")
            theme.label_small(label)
            label.grid(row=0, column=c, sticky="w", padx=5, pady=6)
            info["labels"][key] = label

        actions = ctk.CTkFrame(row, fg_color="transparent")
        actions.grid(row=0, column=4, sticky="w")

        # the buttons read info["book"] when clicked, so they stay correct after an edit
        edit_btn = ctk.CTkButton(
            actions, text="Edit", width=80,
            command=lambda: self.edit_book(info["book"]),
        )
        theme.button_secondary(edit_btn)
        edit_btn.pack(side="left", padx=(0, 5))

        delete_btn = ctk.CTkButton(
            actions, text="Delete", width=80,
            command=lambda: self.delete_book(info["book"]),
        )
        theme.button_danger(delete_btn)
        delete_btn.pack(side="left")

        self.rows[book["id"]] = info
        return info

    def highlight(self, frame):
        # flash the row blue for a second so you can see what changed
        frame.configure(fg_color=theme.Theme.COLORS["primary"])
        self.after(1000, lambda: frame.winfo_exists() and frame.configure(fg_color="transparent"))

    def go_to_page(self, page):
        total = len(self.all_books)
        pages = max(1, math.ceil(total / self.PAGE_SIZE))
        self.page = min(max(page, 1), pages)      # keep the page number valid

        # draw only the 8 books of this page
        start = (self.page - 1) * self.PAGE_SIZE
        end = min(start + self.PAGE_SIZE, total)
        self.show_books(self.all_books[start:end])

        if total:
            self.info_label.configure(text=f"Showing {start + 1} to {end} of {total} books")
        else:
            self.info_label.configure(text="No books found.")

        # page buttons: "<", up to 5 page numbers around the current page, ">"
        for widget in self.pager.winfo_children():
            widget.destroy()
        first = max(1, min(self.page - 2, pages - 4))
        last = min(pages, first + 4)
        buttons = [("<", self.page - 1)]
        buttons += [(str(p), p) for p in range(first, last + 1)]
        buttons += [(">", self.page + 1)]

        for text, target in buttons:
            btn = ctk.CTkButton(self.pager, text=text, width=36, height=32,
                                command=lambda t=target: self.go_to_page(t))
            if text == str(self.page):
                theme.button_primary(btn)       # the current page is blue
            else:
                theme.button_secondary(btn)
            btn.configure(font=theme.Theme.FONTS["normal"])
            btn.pack(side="left", padx=2)

    def get_books(self):
        #now reads the database instead of the json
        return self.db.get_all_books(self.search_text)

    def search(self):
        self.search_text = self.search_entry.get().strip()
        self.all_books = self.get_books()
        self.go_to_page(1)

    def add_book(self):
        BookForm(self.winfo_toplevel(), self.db, self.on_book_saved)

    def edit_book(self, book):
        BookForm(self.winfo_toplevel(), self.db, self.on_book_saved, book)

    def on_book_saved(self, book):
        # called by the popup after the database was updated
        self.all_books = self.get_books()
        ids = [b["id"] for b in self.all_books]
        if book["id"] in ids:
            # go to the page that holds this book (new books are at the end of the list)
            self.go_to_page(ids.index(book["id"]) // self.PAGE_SIZE + 1)
        else:
            self.go_to_page(self.page)
        info = self.rows.get(book["id"])
        if info:
            self.highlight(info["frame"])

    def delete_book(self, book):
        sure = messagebox.askyesno(
            "Delete book",
            f"Delete \"{book['title']}\"?\nThis can't be undone.",
            parent=self.winfo_toplevel(),
        )
        if sure:
            self.db.delete_book(book["id"])
            self.all_books = self.get_books()
            self.go_to_page(self.page)


class BookForm(ctk.CTkToplevel):
    #popups for add and edit

    FIELDS = [
        ("id", "Book ID"),
        ("title", "Book name"),
        ("category", "Category"),
        ("authorname", "Author"),
    ]

    def __init__(self, parent, db, on_save, book=None):
        super().__init__(parent)
        self.db = db
        self.on_save = on_save      # called after a successful save: on_save(new_book)
        self.book = book            # None = adding, dict = editing

        self.title("Edit book" if book else "Add new book")
        self.geometry("420x410")
        self.resizable(False, False)
        self.transient(parent)                  # stays on top of the main window
        self.after(100, self.grab_set)          # block the main window until this one closes

        self.entries = {}
        for key, text in self.FIELDS:
            label = ctk.CTkLabel(self, text=text, anchor="w")
            theme.label_small(label)
            label.pack(fill="x", padx=20, pady=(12, 0))

            if key == "id":
                # the id row has "Random" button next to it
                row = ctk.CTkFrame(self, fg_color="transparent")
                row.pack(fill="x", padx=20)
                entry = ctk.CTkEntry(row, width=250)
                theme.entry_default(entry)
                entry.pack(side="left")
                random_btn = ctk.CTkButton(row, text="Random", width=90, command=self.randomize_id)
                theme.button_secondary(random_btn)
                random_btn.pack(side="left", padx=(10, 0))
            else:
                entry = ctk.CTkEntry(self, width=350)
                theme.entry_default(entry)
                entry.pack(padx=20, anchor="w")

            self.entries[key] = entry
            if book:
                entry.insert(0, book[key])      # pre-fill when editing

        self.error_label = ctk.CTkLabel(self, text="", wraplength=360)
        theme.label_error(self.error_label)
        self.error_label.pack(pady=(12, 0))

        buttons = ctk.CTkFrame(self, fg_color="transparent")
        buttons.pack(pady=15)
        save_btn = ctk.CTkButton(buttons, text="Save", width=110, command=self.save)
        theme.button_primary(save_btn)
        save_btn.pack(side="left", padx=5)
        cancel_btn = ctk.CTkButton(buttons, text="Cancel", width=110, command=self.destroy)
        theme.button_secondary(cancel_btn)
        cancel_btn.pack(side="left", padx=5)

    def randomize_id(self):
        id_entry = self.entries["id"]
        id_entry.delete(0, "end")
        id_entry.insert(0, self.db.generate_id())

    def save(self):
        # read every text field (strip() removes spaces around the text)
        new_book = {key: entry.get().strip() for key, entry in self.entries.items()}

        if not new_book["id"] or not new_book["title"]:
            self.error_label.configure(text="Book ID and Book name are required.")
            return

        old_id = self.book["id"] if self.book else None
        if new_book["id"] != old_id and self.db.book_exists(new_book["id"]):
            self.error_label.configure(text=f"The ID \"{new_book['id']}\" is already used by another book.")
            return

        if self.book:
            self.db.update_book(old_id, new_book)
        else:
            self.db.add_book(new_book)

        self.on_save(new_book)
        self.destroy()


class DataBase:
    def __init__(self, database, filename="bookrecords.json"):
        # 1. Connect to the database
        self.conn = sqlite3.connect(database)
        self.cursor = self.conn.cursor()

        # 2. Create the books table
        self.create_books_table()

        # 3. Create the settings table (stores import status)
        self.create_settings_table()

        # 4. Ensure the import flag exists
        self.initialize_import_flag()

    def create_books_table(self):
        # Create your books table with a unique ISBN or book ID
        # Create the books table
        self.cursor.execute("""
            CREATE TABLE IF NOT EXISTS books (
                id TEXT PRIMARY KEY,
                title TEXT NOT NULL,
                category TEXT,
                authorname TEXT
            )
        """)
        self.conn.commit()

    def create_settings_table(self):
        # Create app_settings table
        # Columns: setting (PRIMARY KEY), value

        self.cursor.execute("""
            CREATE TABLE IF NOT EXISTS app_settings (
                setting TEXT PRIMARY KEY,
                value INTEGER
            )
        """)
        self.conn.commit()

    def initialize_import_flag(self):
        # Insert books_imported = 0 only if it doesn't exist
        self.cursor.execute("""
        INSERT OR IGNORE INTO app_settings (setting, value)
        VALUES ('books_imported', 0)
         """)
        self.conn.commit()

    def load_json(self, filename):
        # Open JSON file and return its contents
        with open(filename, "r", encoding="utf-8") as file:
            return json.load(file)

    def is_imported(self):
        # Read books_imported from app_settings
        self.cursor.execute("""SELECT value FROM app_settings WHERE setting = 'books_imported'""")
        result = self.cursor.fetchone()
        # Return True or False
        if result and result[0] == 1:
            return True
        return False

    def import_books(self, filename):
        # 1. Check whether the books have already been imported
        # 2. If imported, stop
        if self.is_imported():
            return
            # 3. Load the JSON data
        # 4. Loop through the list of book dictionaries
        books_data = self.load_json(filename)
        try:
            for book in books_data:
                # 5. Insert books into the database
                self.cursor.execute(
                    """
                    INSERT OR IGNORE INTO books (id, title, category, authorname)
                    VALUES (?, ?, ?, ?)
                """,
                    (
                        book.get("id"),
                        book.get("title"),
                        book.get("category"),
                        book.get("authorname"),
                    ),
                )
            # 6. Set books_imported = 1
            self.cursor.execute(
                """
                UPDATE app_settings
                SET value = 1
                WHERE setting = 'books_imported'
            """
            )
            # 7. Commit everything together in a transaction
            self.conn.commit()
        except Exception as e:
            self.conn.rollback()
            raise e

    def get_all_books(self, search=""):
        # Return every book (or only the ones containing `search`) as a list of dicts.
        # LIKE '%text%' means "contains text"; it ignores upper/lower case for English letters.
        like = f"%{search}%"
        self.cursor.execute(
            """
            SELECT id, title, category, authorname FROM books
            WHERE id LIKE ? OR title LIKE ? OR category LIKE ? OR authorname LIKE ?
            ORDER BY rowid
            """,
            (like, like, like, like),
        )
        return [
            {"id": row[0], "title": row[1], "category": row[2] or "", "authorname": row[3] or ""}
            for row in self.cursor.fetchall()
        ]

    def book_exists(self, book_id):
        self.cursor.execute("SELECT 1 FROM books WHERE id = ?", (book_id,))
        return self.cursor.fetchone() is not None

    def generate_id(self):
        # random id like BK483920 that is not used yet
        while True:
            new_id = "BK" + "".join(random.choices(string.digits, k=6))
            if not self.book_exists(new_id):
                return new_id

    def add_book(self, book):
        try:
            self.cursor.execute(
                "INSERT INTO books (id, title, category, authorname) VALUES (?, ?, ?, ?)",
                (book["id"], book["title"], book["category"], book["authorname"]),
            )
            self.conn.commit()
        except Exception:
            self.conn.rollback()
            raise

    def update_book(self, old_id, book):
        # old_id is the id the book had before editing (the id itself can be changed too)
        try:
            self.cursor.execute(
                "UPDATE books SET id = ?, title = ?, category = ?, authorname = ? WHERE id = ?",
                (book["id"], book["title"], book["category"], book["authorname"], old_id),
            )
            self.conn.commit()
        except Exception:
            self.conn.rollback()
            raise

    def delete_book(self, book_id):
        try:
            self.cursor.execute("DELETE FROM books WHERE id = ?", (book_id,))
            self.conn.commit()
        except Exception:
            self.conn.rollback()
            raise

    def close(self):
        # Close the database connection
        self.conn.close()


if __name__ == "__main__":
    db = DataBase(DB_FILE)
    try:
        db.import_books(JSON_FILE)
        app = App(db)
        app.mainloop()
    finally:
        db.close()   # runs when the window closes, or if something fails