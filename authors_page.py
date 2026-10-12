import customtkinter as ctk
import theme


class AuthorsPage(ctk.CTkFrame):
    def __init__(self, parent):
        super().__init__(parent)

        top_bar = ctk.CTkFrame(self, fg_color="transparent")
        top_bar.pack(fill="x", padx=10, pady=10)

        self.search_entry = ctk.CTkEntry(top_bar, width=250, placeholder_text="Search authors...")
        theme.entry_default(self.search_entry)
        self.search_entry.pack(side="left")

        search_btn = ctk.CTkButton(top_bar, text="Search", width=90, command=self.search)
        theme.button_secondary(search_btn)
        search_btn.pack(side="left", padx=10)

        add_btn = ctk.CTkButton(top_bar, text="Add new author", command=self.add_author)
        theme.button_primary(add_btn)
        add_btn.pack(side="left")

        label = ctk.CTkLabel(self, text="Authors page")
        label.pack(pady=20)

    def search(self):
        text = self.search_entry.get()
        print("searching for:", text)

    def add_author(self):
        print("add book clicked")