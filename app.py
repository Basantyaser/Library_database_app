import sqlite3
import customtkinter as ctk

import theme 
import json

class App(ctk.CTk):
    def __init__(self):
        super().__init__()
        self.title("Library Management System")
        self.geometry("1080x500")

        sidebar = ctk.CTkFrame(self, width=200)
        sidebar.pack(side="left", fill="y")

        sidebar_title = ctk.CTkLabel(sidebar, text="Library")
        theme.label_title(sidebar_title)
        sidebar_title.pack(pady=20)

        page_classes = {
            "Books": BooksPage,
            "Borrow Books": BorrowedBooksPage
        }

        for name in page_classes:
            btn = ctk.CTkButton(
                sidebar, text=name, anchor="w",
                command=lambda n=name: self.show_page(n),
            )
            theme.button_secondary(btn)
            btn.pack(fill="x", padx=10, pady=3)

        self.content = ctk.CTkFrame(self)
        self.content.pack(side="left", fill="both", expand=True)

        self.pages = {}

        for name, page_class in page_classes.items():
            self.pages[name] = page_class(self.content)

        self.show_page("Books")

    def show_page(self, name):
        for page in self.pages.values():
            page.pack_forget()
        self.pages[name].pack(fill="both", expand=True)





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
            for c, key in enumerate(["id", "name", "category", "author"]):
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
        # TODO : حط داتا بدل دول
        return [
            {"id": 1001, "name": "Independent Women", "category": "Self development", "author": "Elizabeth Hailey"},
            {"id": 1002, "name": "Never Ending Sky", "category": "Novels", "author": "Joseph Kirland"},
            {"id": 1003, "name": "Harry Potter", "category": "Novels", "author": "J. K. Rowling"},
        ]

    def search(self):
        text = self.search_entry.get()
        print("searching for:", text)

    def add_book(self):
        print("add book clicked")

    def edit_book(self, book_id):
        print("edit book", book_id)

    def delete_book(self, book_id):
        print("delete book", book_id)





class BorrowedBooksPage(ctk.CTkFrame):
    def __init__(self, parent):
        super().__init__(parent)

        #title
        title = ctk.CTkLabel(self, text="Borrowed Books")
        theme.label_title(title)
        title.pack(anchor="w", padx=10, pady=10)






class DataBase:
    def __init__(self, database):
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
        pass

    def create_settings_table(self):
        # Create app_settings table
        # Columns: setting (PRIMARY KEY), value
        pass

    def initialize_import_flag(self):
        # Insert books_imported = 0 only if it doesn't exist
        pass

    def load_json(self, filename):
        # Open JSON file and return its contents
        pass

    def is_imported(self):
        # Read books_imported from app_settings
        # Return True or False
        pass

    def import_books(self, filename):
        # 1. Check whether the books have already been imported
        # 2. If imported, stop
        # 3. Load the JSON data
        # 4. Loop through the list of book dictionaries
        # 5. Insert books into the database
        # 6. Set books_imported = 1
        # 7. Commit everything together in a transaction
        pass

    def close(self):
        # Close the database connection
        self.conn.close()


if __name__ == "__main__":
    app = App()
    app.mainloop()