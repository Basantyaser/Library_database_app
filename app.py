from mmap import PAGESIZE

import theme
import sqlite3
import tkinter as tk
import customtkinter as ctk

from theme import Theme




class App(ctk.CTk):
    def __init__(self):
        super().__init__()
        self.title("LIbrary Management System")
        self.geometry("700x500")
        sidebar = ctk.CTkFrame(self, width=200)
        sidebar.pack(side="left", fill="y")



        categories = ["Categories", "Books", "Authors", "Members"]

        for name in categories:
            btn = ctk.CTkButton(
                sidebar, text=name, anchor="w", fg_color="transparent",
                command=lambda n=name: self.show_page(n),
            )
            btn.pack(fill="x")

        self.content = ctk.CTkFrame(self)
        self.content.pack(side="left", fill="both", expand=True)

        self.pages = {}

        for name in categories:
            page = ctk.CTkFrame(self.content)
            label = ctk.CTkLabel(page, text=f"{name} page")
            label.pack(pady=20)
            self.pages[name] = page

        self.show_page("Categories")


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