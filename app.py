import sqlite3
import customtkinter as ctk

import theme 
import json

class App(ctk.CTk):
    def __init__(self):
        super().__init__()
        self.title("Library Management System")
        self.geometry("1080x500")

        books_page = BooksPage(self)
        books_page.pack(fill="both", expand=True)


class BooksPage(ctk.CTkFrame):
    def __init__(self, parent):
        super().__init__(parent)

        #title
        title = ctk.CTkLabel(self, text="Books")
        theme.label_title(title)
        title.pack(anchor="w", padx=10, pady=(10, 0))

        #top bar
        top_bar = ctk.CTkFrame(self, fg_color="transparent")
        top_bar.pack(fill="x", padx=10, pady=10)

        self.search_entry = ctk.CTkEntry(top_bar, width=250, placeholder_text="Search books...")
        theme.entry_default(self.search_entry)
        self.search_entry.pack(side="left")

        search_btn = ctk.CTkButton(top_bar, text="Search", width=90, command=self.search)
        theme.button_secondary(search_btn)
        search_btn.pack(side="left", padx=10)

        add_btn = ctk.CTkButton(top_bar, text="Add new book", command=self.add_book)
        theme.button_primary(add_btn)
        add_btn.pack(side="left")

        #table header
        columns = ["Book ID", "Book name", "Category", "Author", "Actions"]

        header = ctk.CTkFrame(self)
        header.pack(fill="x", padx=10)

        for i, text in enumerate(columns):
            header.grid_columnconfigure(i, weight=1, uniform="col")
            label = ctk.CTkLabel(header, text=text, anchor="w")
            theme.label_default(label)
            label.grid(row=0, column=i, sticky="w", padx=5, pady=5)

        #table
        self.table = ctk.CTkScrollableFrame(self)
        self.table.pack(fill="both", expand=True, padx=10, pady=10)

        for i in range(len(columns)):
            self.table.grid_columnconfigure(i, weight=1, uniform="col")

        self.show_books(self.get_books())

    def show_books(self, books):
        # remove the old rows first
        for widget in self.table.winfo_children():
            widget.destroy()

        # one row per book
        for r, book in enumerate(books):
            # the keys must match what get_books() returns
            for c, key in enumerate(["id", "title", "category", "authorname"]):
                label = ctk.CTkLabel(self.table, text=book[key], anchor="w")
                theme.label_small(label)
                label.grid(row=r, column=c, sticky="w", padx=5, pady=6)

            actions = ctk.CTkFrame(self.table, fg_color="transparent")
            actions.grid(row=r, column=4, sticky="w")

            edit_btn = ctk.CTkButton(
                actions, text="Edit", width=80,
                command=lambda b=book: self.edit_book(b["id"]),
            )
            theme.button_secondary(edit_btn)
            edit_btn.pack(side="left", padx=(0, 5))

            delete_btn = ctk.CTkButton(
                actions, text="Delete", width=80,
                command=lambda b=book: self.delete_book(b["id"]),
            )
            theme.button_danger(delete_btn)
            delete_btn.pack(side="left")

    def get_books(self):
        #reads the json :O
        with open("bookrecords.json", "r", encoding="utf-8") as file:
            return json.load(file)

    def search(self):
        text = self.search_entry.get()
        print("searching for:", text)

    def add_book(self):
        print("add book clicked")

    def edit_book(self, book_id):
        print("edit book", book_id)

    def delete_book(self, book_id):
        print("delete book", book_id)









class DataBase:
    def __init__(self, database,filename="bookrecords.json"):
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
        with open(filename, "r") as file:
             data = json.load(file)
             return data

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

    def close(self):
        # Close the database connection
        self.conn.close()


if __name__ == "__main__":
    db = DataBase("library.db")
    db.create_database()
    db.close()

    app = App()
    app.mainloop()