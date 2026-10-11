import customtkinter as ctk
from theme import Theme

class CategoriesPage(ctk.CTkFrame):
    def __init__(self, parent):
        super().__init__(parent)

        label = ctk.CTkLabel(self, text="Categories page")
        label.pack(pady=20)