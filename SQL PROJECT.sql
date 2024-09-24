/*Topic : Library Management System :
 You are going to build a project based on Library Management System.
 It keeps track of all information about books in the library, their cost, status and total number of books available in the library.
 Create a database named library and following TABLES in the database:
 1. Branch 2. Employee 3. Books 4. Customer 5. IssueStatus 6. ReturnStatus 
 Attributes for the tables: 
 1. Branch Branch_no - Set as PRIMARY KEY Manager_Id Branch_address Contact_no 
 2. Employee Emp_Id – Set as PRIMARY KEY Emp_name Position Salary Branch_no - Set as FOREIGN KEY and it refer Branch_no in Branch table 
 3. Books ISBN - Set as PRIMARY KEY Book_title Category Rental_Price Status [Give yes if book available and no if book not available] Author Publisher
 4. Customer Customer_Id - Set as PRIMARY KEY Customer_name Customer_address Reg_date 
 5. IssueStatus Issue_Id - Set as PRIMARY KEY Issued_cust – Set as FOREIGN KEY and it refer customer_id in CUSTOMER table 
 Issued_book_name Issue_date Isbn_book – Set as FOREIGN KEY and it should refer isbn in BOOKS table 
 6. ReturnStatus Return_Id - Set as PRIMARY KEY Return_cust Return_book_name Return_date Isbn_book2 - Set as FOREIGN KEY and it should refer isbn
 in BOOKS table Display all the tables and Write the queries for the following : 
 1. Retrieve the book title, category, and rental price of all available books. 
 2. List the employee names and their respective salaries in descending order of salary. 
 3. Retrieve the book titles and the corresponding customers who have issued those books. 
 4. Display the total count of books in each category. 
 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000. 
 6. List the customer names who registered before 2022-01-01 and have not issued any books yet. 
 7. Display the branch numbers and the total count of employees in each branch. 
 8. Display the names of customers who have issued books in the month of June 2023.
 9. Retrieve book_title from book table containing history. 
 10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees 
 11. Retrieve the names of employees who manage branches and their respective branch addresses. 
 12. Display the names of customers who have issued books with a rental price higher than Rs. 25. 
 Score Distribution: 1 point for correctly formulating the query of each question (12 x 1 = 12). 1 point for providing screenshots of the output
 for each question (12 x 1 = 12). 1 point for timely submission. Total = 25. PS : After completing the project upload your project with screenshots
 in the github and share the link.*/

create database Library;

#1. Branch Branch_no - Set as PRIMARY KEY Manager_Id Branch_address Contact_no use library;
CREATE TABLE Branch (
    Branch_no INT PRIMARY KEY,
    Manager_Id INT,
    Branch_address VARCHAR(255),
    Contact_no VARCHAR(15)
);
INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no)
VALUES 
(1, 101, '123 Main St, New York, NY', '212-555-1234'),
(2, 102, '456 Elm St, Los Angeles, CA', '310-555-5678'),
(3, 103, '789 Oak St, Chicago, IL', '312-555-9876'),
(4, 104, '101 Pine St, Houston, TX', '713-555-2468'),
(5, 105, '202 Cedar St, Phoenix, AZ', '602-555-1357'),
(6, 106, '303 Birch St, Philadelphia, PA', '215-555-8642'),
(7, 107, '404 Maple St, San Antonio, TX', '210-555-3579'),
(8, 108, '505 Walnut St, San Diego, CA', '619-555-8641'),
(9, 109, '606 Cherry St, Dallas, TX', '214-555-4321'),
(10, 110, '707 Willow St, San Jose, CA', '408-555-7890');

select * from branch;

/*2. Employee Emp_Id – Set as PRIMARY KEY Emp_name Position Salary Branch_no - Set as FOREIGN KEY and it refer Branch_no
 in Branch table */
 CREATE TABLE EMPLOYEE (
 EMP_ID INT PRIMARY KEY,
 Emp_name VARCHAR(15),
 POSITION VARCHAR(15),
 SALARY decimal(7,2),
 BRANCH_NO INT ,FOREIGN KEY (BRANCH_NO) REFERENCES BRANCH(BRANCH_NO));
 DESC EMPLOYEE;
 DROP TABLE EMPLOYEE;
-- Insert 10 sample values into the EMPLOYEE table
INSERT INTO EMPLOYEE (EMP_ID, Emp_Name, Position, Salary, Branch_No)
VALUES
(1, 'John Doe', 'Manager', 75000.00, 1),
(2, 'Jane Smith', 'Analyst', 60000.00, 2),
(3, 'Michael Brown', 'Developer', 55000.00, 3),
(4, 'Emily Davis', 'HR', 45000.00, 4),
(5, 'David Wilson', 'Technician', 50000.00, 4), -- Corrected Branch_no
(6, 'Sarah Johnson', 'Support', 40000.00, 2),  -- Corrected Branch_no
(7, 'Kevin Moore', 'Clerk', 35000.00, 5),
(8, 'Laura Taylor', 'Engineer', 65000.00, 3),
(9, 'Robert Martin', 'Sales', 48000.00, 4),
(10, 'Linda White', 'Executive',58000.00, 1);

SELECT * FROM EMPLOYEE;

 #3. Books ISBN - Set as PRIMARY KEY Book_title Category Rental_Price Status [Give yes if book available and no if book not available] Author Publisher
CREATE TABLE BOOKS (
    ISBN VARCHAR(13) PRIMARY KEY,
    Book_title VARCHAR(255),
    Category VARCHAR(50),
    Rental_Price DECIMAL(8,2),
    Status VARCHAR(3) CHECK (Status IN ('yes', 'no')),
    Author VARCHAR(100),
    Publisher VARCHAR(100)
);

 INSERT INTO BOOKS (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher)
VALUES
('9780131103627', 'The C Programming Language', 'Programming', 5.99, 'yes', 'Brian Kernighan', 'Prentice Hall'),
('9780201633610', 'Design Patterns', 'Software Engineering', 6.99, 'no', 'Erich Gamma', 'Addison-Wesley'),
('9780262033848', 'Introduction to Algorithms', 'Computer Science', 8.99, 'yes', 'Thomas H. Cormen', 'MIT Press'),
('9780132350884', 'Clean Code', 'Programming', 7.99, 'yes', 'Robert C. Martin', 'Prentice Hall'),
('9780596007126', 'Head First Design Patterns', 'Software Engineering', 5.99, 'no', 'Eric Freeman', 'O\'Reilly Media'),
('9780134685991', 'Effective Java', 'Programming', 6.49, 'yes', 'Joshua Bloch', 'Addison-Wesley'),
('9780134494166', 'The Pragmatic Programmer', 'Programming', 7.49, 'yes', 'Andy Hunt', 'Addison-Wesley'),
('9781491904244', 'Learning Python', 'Programming', 6.99, 'no', 'Mark Lutz', 'O\'Reilly Media'),
('9780134757599', 'Refactoring', 'Software Engineering', 7.99, 'yes', 'Martin Fowler', 'Addison-Wesley'),
('9781449373320', 'Python for Data Analysis', 'Data Science', 6.99, 'yes', 'Wes McKinney', 'O\'Reilly Media');
SELECT * FROM BOOKS;

# 4. Customer Customer_Id - Set as PRIMARY KEY Customer_name Customer_address Reg_date
CREATE TABLE CUSTOMER (CUSTOMER_ID INT PRIMARY KEY ,CUSTOMER_NAME VARCHAR(15),CUSTOMER_ADDRESS VARCHAR(30),REG_DATE DATE);
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, CUSTOMER_ADDRESS, REG_DATE)
VALUES
(1, 'Alice Smith', '123 Maple St', '2023-01-15'),
(2, 'Bob Johnson', '456 Oak St', '2023-02-20'),
(3, 'Charlie Brown', '789 Pine St', '2023-03-05'),
(4, 'Diana Prince', '101 Elm St', '2023-04-12'),
(5, 'Edward Elric', '202 Cedar St', '2023-05-18'),
(6, 'Fiona Glenanne', '303 Birch St', '2023-06-25'),
(7, 'George Lucas', '404 Walnut St', '2023-07-30'),
(8, 'Hannah Montana', '505 Cherry St', '2023-08-15'),
(9, 'Ian Malcolm', '606 Willow St', '2023-09-10'),
(10, 'Julia Roberts', '707 Spruce St', '2023-10-01');
SELECT * FROM CUSTOMER;

/*5. IssueStatus Issue_Id - Set as PRIMARY KEY Issued_cust – Set as FOREIGN KEY and it refer customer_id in CUSTOMER table 
 Issued_book_name Issue_date Isbn_book – Set as FOREIGN KEY and it should refer isbn in BOOKS table */
 CREATE TABLE IssueStatus (ISSUE_ID INT PRIMARY KEY ,ISSUED_CUST INT ,ISSUED_BOOK_NAME VARCHAR (30),
 ISSUE_DATE DATE ,FOREIGN KEY (ISSUED_CUST ) REFERENCES CUSTOMER(CUSTOMER_ID) );
 INSERT INTO IssueStatus (ISSUE_ID, ISSUED_CUST, ISSUED_BOOK_NAME, ISSUE_DATE)
VALUES
(201, 1, 'The C Programming Language', '2024-01-15'),
(202, 2, 'Design Patterns', '2024-02-20'),
(203, 3, 'Introduction to Algorithms', '2024-03-05'),
(204, 4, 'Clean Code', '2024-04-12'),
(205, 5, 'Head First Design Patterns', '2024-05-18'),
(206, 6, 'Effective Java', '2024-06-25'),
(207, 7, 'The Pragmatic Programmer', '2024-07-30'),
(208, 8, 'Learning Python', '2024-08-15'),
(209, 9, 'Refactoring', '2024-09-10'),
(210, 10, 'Python for Data Analysis', '2024-10-01');

SELECT * from ISSUESTATUS;
use library;
/*6. ReturnStatus Return_Id - Set as PRIMARY KEY Return_cust Return_book_name Return_date Isbn_book2 - Set as FOREIGN KEY and it should refer isbn
 in BOOKS table*/
 CREATE TABLE Returnstatus (
    Return_Id INT PRIMARY KEY,
    Return_Cust VARCHAR(35),
    Return_Book_Name VARCHAR(50),
    Return_Date DATE,
    Isbn_Book2 VARCHAR(13),
    FOREIGN KEY (Isbn_Book2) REFERENCES Books(Isbn)
);
INSERT INTO Returnstatus (Return_Id, Return_Cust, Return_Book_Name, Return_Date, Isbn_Book2)
VALUES
(1, 'John Doe', 'The C Programming Language', '2024-09-01', '9780131103627'),
(2, 'Jane Smith', 'The Pragmatic Programmer', '2024-09-05', '9780201633610'),
(3, 'Robert Brown', 'Clean Code', '2024-09-07', '9780262033848'),
(4, 'Emily Johnson', 'Introduction to Algorithms', '2024-09-10', '9780132350884'),
(5, 'Michael White', 'Designing Data-Intensive Applications', '2024-09-12', '9780596007126'),
(6, 'Sarah Davis', 'Effective Java', '2024-09-15', '9780134685991'),
(7, 'David Wilson', 'Head First Design Patterns', '2024-09-18','9780134494166'),
(8, 'Linda Taylor', 'Java: The Complete Reference', '2024-09-20', '9781491904244'),
(9, 'Kevin Moore', 'Learning Python', '2024-09-22', '9780134757599'),
(10, 'Laura Martinez', 'Refactoring', '2024-09-25', '9781449373320');
SELECT * FROM RETURNSTATUS;
RENAME TABLE RETURNS TO RETURNSTATUS;

/*Display all the tables and Write the queries for the following :*/ 
select * from Branch;
SELECT * FROM EMPLOYEE;
SELECT * FROM BOOKS;
SELECT * FROM CUSTOMER;
SELECT * from ISSUESTATUS;
SELECT * FROM RETURNSTATUS;
# 1. Retrieve the book title, category, and rental price of all available books. 
 SELECT BOOK_TITLE ,CATEGORY,RENTAL_PRICE FROM BOOKS;
 
# 2. List the employee names and their respective salaries in descending order of salary. 
SELECT EMP_NAME ,SALARY FROM EMPLOYEE ORDER BY SALARY DESC ;

# 3. Retrieve the book titles and the corresponding customers who have issued those books. 
SELECT B.BOOK_TITLE ,I.ISSUED_CUST,C.CUSTOMER_NAME 
FROM BOOKS B
JOIN ISSUESTATUS I ON B.BOOK_TITLE = I.ISSUED_BOOK_NAME 
JOIN CUSTOMER C ON  I.ISSUED_CUST = C.CUSTOMER_ID ; 

# 4. Display the total count of books in each category. 
SELECT COUNT(ISBN)AS COUNT_OF_BOOKS,CATEGORY FROM BOOKS GROUP BY CATEGORY;

# 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000. 
SELECT EMP_NAME ,POSITION,SALARY FROM EMPLOYEE WHERE SALARY > 50000.00;

 #6. List the customer names who registered before 2024-07-30 and have not issued any books yet.
 SELECT C.CUSTOMER_NAME ,C.REG_DATE
 FROM CUSTOMER C
 JOIN ISSUESTATUS I 
 ON C.CUSTOMER_ID = I.ISSUED_CUST 
 WHERE C.REG_DATE < '2024-07-30' AND I.ISSUED_BOOK_NAME='';
 

 #7. Display the branch numbers and the total count of employees in each branch.
 SELECT B.BRANCH_NO,COUNT(E.EMP_ID) AS TOTAL_EMPLOYEES
 FROM BRANCH B 
 JOIN EMPLOYEE E 
 ON B.BRANCH_NO = E.BRANCH_NO GROUP BY BRANCH_NO;
 
 
 #8. Display the names of customers who have issued books in the month of June 2024.
 SELECT C.CUSTOMER_NAME ,I.ISSUE_DATE
 FROM CUSTOMER C
 JOIN ISSUESTATUS I 
 ON C.CUSTOMER_ID = I.ISSUED_CUST 
 WHERE I.ISSUE_DATE BETWEEN '2024-06-01'AND '2024-06-30';
 
 
 #9. Retrieve book_title from book table containing DATA SCIENCE. 
 SELECT BOOK_TITLE,CATEGORY FROM BOOKS WHERE CATEGORY='DATA SCIENCE';
 

# 10.Retrieve the branch numbers along with the count of employees for branches having more than 2 employees.
SELECT BRANCH_NO ,COUNT(EMP_ID) AS EMPLOYEE_COUNT 
FROM EMPLOYEE 
GROUP BY BRANCH_NO HAVING  COUNT(EMP_ID)>2;

 #11. Retrieve the names of employees who manage branches and their respective branch addresses. 
 SELECT E.EMP_NAME, B.BRANCH_ADDRESS 
 FROM EMPLOYEE E
 JOIN BRANCH B
 ON B.BRANCH_NO = E.BRANCH_NO 
 WHERE E.POSITION = 'MANAGER';
 
 #12. Display the names of customers who have issued books with a rental price higher than Rs.7. 
 SELECT C.CUSTOMER_NAME, B.RENTAL_PRICE
 FROM BOOKS B
 JOIN ISSUESTATUS I ON B.BOOK_TITLE = I.ISSUED_BOOK_NAME 
 JOIN CUSTOMER C ON I.ISSUED_CUST = C.CUSTOMER_ID
 WHERE B.RENTAL_PRICE > 7;
 
