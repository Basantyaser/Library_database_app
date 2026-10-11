import customtkinter as ctk
from theme import Theme

class BooksPage(ctk.CTkFrame):
    def __init__(self, parent):
        super().__init__(parent)

        label = ctk.CTkLabel(self, text="Books page")
        label.pack(pady=20)