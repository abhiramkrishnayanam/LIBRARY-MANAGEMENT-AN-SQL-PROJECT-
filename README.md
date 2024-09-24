# LIBRARY-MANAGEMENT-SYSTEM-(AN SQL PROJECT)

## Problem Statement

You are going to build a project based on the Library Management System.
It keeps track of all information about books in the library, their cost, status, and total number of books available.

### Steps followed 

Create a database named library and the following TABLES in the database:
 1. Branch 2. Employee 3. Books 4. Customer 5. IssueStatus 6. ReturnStatus 

# Attributes for the tables: 
 
 1. Branch: Branch_no - Set as PRIMARY KEY Manager_Id Branch_address Contact_no 
 2. Employee: Emp_Id – Set as PRIMARY KEY Emp_name Position Salary Branch_no - Set as FOREIGN KEY and it refer Branch_no in Branch table 
 3. Books: ISBN - Set as PRIMARY KEY Book_title Category Rental_Price Status [Give yes if book available and no if book not available] Author Publisher
 4. Customer: Customer_Id - Set as PRIMARY KEY Customer_name Customer_address Reg_date 
 5. IssueStatus: Issue_Id - Set as PRIMARY KEY Issued_cust – Set as FOREIGN KEY and it refer customer_id in CUSTOMER table 
 Issued_book_name Issue_date Isbn_book – Set as FOREIGN KEY and it should refer isbn in BOOKS table 
 6. ReturnStatus: Return_Id - Set as PRIMARY KEY Return_cust Return_book_name Return_date Isbn_book2 - Set as FOREIGN KEY and it should refer isbn
 in BOOKS table Display all the tables and Write the queries for the following : 


 
# To do :

1. Retrieve the book title, category, and rental price of all available books. 

![1](https://github.com/user-attachments/assets/fb0bf462-a3e7-47a5-a5e3-b3ea13c84cc4)

 2. List the employee names and their respective salaries in descending order of salary. 
 
 ![2](https://github.com/user-attachments/assets/f0c7a40d-e30a-4cdf-a3b8-d212b0c39e86) 

 3. Retrieve the book titles and the corresponding customers who have issued those books. 
 
 ![3](https://github.com/user-attachments/assets/d6307441-90d9-4e43-bf3f-fe8cbfbc9aa5)

 4. Display the total count of books in each category.
 
 ![4](https://github.com/user-attachments/assets/53ab240d-583d-4a1e-8de5-05f80b24783c)

 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000. 
 ![5](https://github.com/user-attachments/assets/ffe95061-5deb-4cb7-9895-80baf882cba9) 

 6. List the customer names who registered before 2022-01-01 and have not issued any books yet.
 
 ![6](https://github.com/user-attachments/assets/5aaf7b4e-2925-452b-b5bb-1a2601baeef8)

 
 7. Display the branch numbers and the total count of employees in each branch.
 
 ![7](https://github.com/user-attachments/assets/ca5e8091-bd7d-4bcf-8c82-f73b3016d77e)

 8. Display the names of customers who have issued books in the month of June 2023.
 
 ![8](https://github.com/user-attachments/assets/00d38325-0b28-4cbf-84a9-4f593df8c72f)

 9. Retrieve book_title from book table containing history. 
 
 ![9](https://github.com/user-attachments/assets/b724b083-3692-40b0-9e5d-675d68fd8aa5)

 10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees.
 
 ![10](https://github.com/user-attachments/assets/1da0a77e-d976-4c95-9802-243d2ffc9869)
 
 11. Retrieve the names of employees who manage branches and their respective branch addresses. 
 
 ![11](https://github.com/user-attachments/assets/26d71b8b-b8d9-4063-a834-e6d4eb786318)

 12. Display the names of customers who have issued books with a rental price higher than Rs. 25.  
  
  ![12](https://github.com/user-attachments/assets/99d9d34f-c52c-4f5d-83cc-d0ec964029cc) 
