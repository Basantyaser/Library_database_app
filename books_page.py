import customtkinter as ctk
import theme


class BooksPage(ctk.CTkFrame):
    def __init__(self, parent):
        super().__init__(parent)

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