
import theme
import sqlite3
import tkinter as tk
import customtkinter as ctk


class App(ctk.CTk):
    def __init__(self):
        super().__init__()
        self.title("Library Management System")
        self.geometry("700x500")


class DataBase:
    def __init__(self, database):
        self.conn = sqlite3.connect(database)
        self.cursor = self.conn.cursor()
        self.conn.execute("PRAGMA foreign_keys = ON")

    def create_database(self):
        self.cursor.executescript("""
        CREATE TABLE IF NOT EXISTS Authors (
            Author_id INTEGER PRIMARY KEY AUTOINCREMENT,
            Author_name VARCHAR(20)
        );

        CREATE TABLE IF NOT EXISTS Categories (
            Category_id INTEGER PRIMARY KEY AUTOINCREMENT,
            Category_name VARCHAR(20)
        );

        CREATE TABLE IF NOT EXISTS Books (
            Book_id INTEGER PRIMARY KEY AUTOINCREMENT,
            Book_name VARCHAR(20),
            Book_author_id INTEGER,
            Book_category_id INTEGER,
            Book_copies INTEGER,
            Book_status VARCHAR(20),
            FOREIGN KEY (Book_category_id)
                REFERENCES Categories(Category_id),
            FOREIGN KEY (Book_author_id)
                REFERENCES Authors(Author_id)
        );

        CREATE TABLE IF NOT EXISTS Staff (
            Staff_id INTEGER PRIMARY KEY AUTOINCREMENT,
            Staff_name VARCHAR(20),
            Staff_age INTEGER,
            Staff_job VARCHAR(20)
        );

        CREATE TABLE IF NOT EXISTS Members (
            Member_id INTEGER PRIMARY KEY AUTOINCREMENT,
            Member_name VARCHAR(20),
            Member_sex VARCHAR(1),
            Member_age INTEGER
        );

        CREATE TABLE IF NOT EXISTS Loans (
            Loan_id INTEGER PRIMARY KEY AUTOINCREMENT,
            Member_id INTEGER NOT NULL,
            Book_id INTEGER NOT NULL,
            Borrowed_date DATE,
            Due_date DATE,
            Returned_date DATE,
            FOREIGN KEY (Member_id)
                REFERENCES Members(Member_id),
            FOREIGN KEY (Book_id)
                REFERENCES Books(Book_id)
        );

        CREATE TABLE IF NOT EXISTS Fines (
            Fine_id INTEGER PRIMARY KEY AUTOINCREMENT,
            Loan_id INTEGER NOT NULL UNIQUE,
            Amount DECIMAL(10,2) NOT NULL,
            Reason VARCHAR(20),
            Status VARCHAR(10) DEFAULT 'UnPaid',
            FOREIGN KEY (Loan_id)
                REFERENCES Loans(Loan_id)
        );
        """)

        self.conn.commit()
        print("Database and tables created successfully!")

    def close(self):
        self.conn.close()


if __name__ == "__main__":
    db = DataBase("library.db")
    db.create_database()
    db.close()

    app = App()
    app.mainloop()