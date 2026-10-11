import theme
import sqlite3
import tkinter as tk
import customtkinter as ctk



class App(ctk.CTk):
    def __init__(self):
        super().__init__()
        self.title("LIbrary Management System")
        self.geometry("700x500")
        
        
        
        

class DataBase:
    def __init__(self, database):
        self.conn = sqlite3.connect(database)
        self.cursor = self.conn.cursor()
        


if __name__ == "__main__":
    app = App()
    app.mainloop()