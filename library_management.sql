
 CREATE TABLE Authors(
    Author_id INT PRIMARY KEY AUTO_INCREMENT,
    Author_name VARCHAR(20)
 ); 
  CREATE TABLE Categories(
    Category_id INT PRIMARY KEY AUTO_INCREMENT,
    Category_name VARCHAR(20) 
 );
 CREATE TABLE Books(
Book_id INT PRIMARY KEY AUTO_INCREMENT,
Book_name VARCHAR(20),
Book_author_id INT,
Book_category_id INT,
Book_copies INT,
Book_status VARCHAR(20),
FOREIGN KEY (Book_Category_id) REFERENCES Categories(Category_id),
FOREIGN KEY (Book_author_id) REFERENCES Authors(Author_id)
 );

 CREATE TABLE Staff(
Staff_id INT PRIMARY KEY AUTO_INCREMENT,
Staff_name VARCHAR(20),
Staff_age INT,
Staff_job VARCHAR(20)    
 );
 CREATE TABLE Members(
    Member_id INT PRIMARY KEY AUTO_INCREMENT,
    Member_name VARCHAR(20),
    Member_sex VARCHAR(1),
    Member_age INT
    
 );

CREATE TABLE Loans(
Loan_id INT PRIMARY KEY AUTO_INCREMENT,
Member_id INT NOT NULL,
Book_id INT NOT NULL,
Borrowed_date DATE,
Due_date DATE,
Returned_date DATE,
FOREIGN KEY (Member_id) REFERENCES Members(Member_id),
FOREIGN KEY (Book_id) REFERENCES Books(Book_id)
);
CREATE TABLE Fines(
Fine_id INT PRIMARY KEY AUTO_INCREMENT,
Loan_id INT NOT NULL UNIQUE,
Amount DECIMAL(10,2) NOT NULL,
Reason VARCHAR(20),
Status VARCHAR(10) DEFAULT 'UnPaid',
FOREIGN KEY (Loan_id) REFERENCES Loans(Loan_id)
);