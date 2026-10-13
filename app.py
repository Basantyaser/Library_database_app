import sqlite3
import customtkinter as ctk

from categories_page import CategoriesPage
from books_page import BooksPage
from authors_page import AuthorsPage
from members_page import MembersPage


class App(ctk.CTk):
    def __init__(self):
        super().__init__()
        self.title("Library Management System")
        self.geometry("1080x500")

        sidebar = ctk.CTkFrame(self, width=200)
        sidebar.pack(side="left", fill="y")

        page_classes = {
            "Books": BooksPage,
            "Categories": CategoriesPage,
            "Authors": AuthorsPage,
            "Members": MembersPage,
        }

        for name in page_classes:
            btn = ctk.CTkButton(
                sidebar, text=name, anchor="w", fg_color="transparent",
                command=lambda n=name: self.show_page(n),
            )
            btn.pack(fill="x")

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


class DataBase:
    def __init__(self, database):
        self.conn = sqlite3.connect(database)
        self.cursor = self.conn.cursor()


if __name__ == "__main__":
    app = App()
    app.mainloop()