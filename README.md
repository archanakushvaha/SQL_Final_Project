# 🎓 University Management System

## 📌 Project Overview

The **University Management System** is a MySQL-based database project designed to manage university information efficiently.

This project manages information about students, departments, courses, instructors, and student enrollments. It demonstrates various SQL concepts, including database creation, table creation, CRUD operations, JOINs, subqueries, aggregate functions, date functions, string functions, and window functions.

## 🎯 Project Objectives

- To create and manage a university database.
- To store student and instructor information.
- To manage departments and courses.
- To maintain student enrollment records.
- To perform INSERT, UPDATE, and DELETE operations.
- To retrieve meaningful information using SQL queries.
- To understand relationships between multiple tables.

## 🛠️ Technologies Used

- **Database:** MySQL
- **Language:** SQL
- **Tool:** MySQL Workbench

## 🗂️ Database Structure

**Database Name:** `University`

This project contains five tables:

| Table Name | Description |
|---|---|
| Departments | Stores department details. |
| Students | Stores student personal information and enrollment dates. |
| Courses | Stores course details, credits, and department references. |
| Instructors | Stores instructor details, department references, and salary information. |
| Enrollments | Stores student course enrollment records. |

## 🔗 Table Relationships

- Departments → Courses (One-to-Many)
- Departments → Instructors (One-to-Many)
- Students → Enrollments (One-to-Many)
- Courses → Enrollments (One-to-Many)

## 📚 SQL Concepts Covered

### 1. Database and Table Operations
- CREATE DATABASE
- USE
- CREATE TABLE

### 2. Data Manipulation Language (DML)
- INSERT
- UPDATE
- DELETE

### 3. Data Query Language (DQL)
- SELECT
- WHERE
- DISTINCT
- IN
- LIMIT

### 4. SQL JOIN Operations
- INNER JOIN
- LEFT JOIN
- Multiple Table JOIN

### 5. Aggregate Functions
- COUNT()
- AVG()
- MAX()

### 6. Grouping and Filtering
- GROUP BY
- HAVING
- COUNT(DISTINCT)

### 7. Subqueries
- Nested SELECT Queries
- IN Operator
- Subqueries with GROUP BY and HAVING

### 8. String and Date Functions
- CONCAT()
- YEAR()
- CURDATE()
- DATE_SUB()
- INTERVAL

### 9. Advanced SQL Concepts
- CASE Statement
- Window Functions
- Running Total
- ORDER BY inside Window Functions
- ROWS BETWEEN
- UNBOUNDED PRECEDING

## ⚙️ Project Features

1. Create and manage university departments.
2. Insert and update student information.
3. Manage courses and their credits.
4. Maintain instructor details and salaries.
5. Enroll students in different courses.
6. Retrieve students enrolled after a specific date.
7. Find courses belonging to a particular department.
8. Calculate the total number of students enrolled in each course.
9. Identify students enrolled in both Introduction to SQL and Data Structures.
10. Display students enrolled in either SQL or Data Structures.
11. Calculate average course credits.
12. Find the maximum instructor salary in the Computer Science department.
13. Display department-wise student enrollment counts.
14. Retrieve student and course details using INNER JOIN.
15. Display all students with their course details using LEFT JOIN.
16. Identify students enrolled in courses using nested subqueries.
17. Extract enrollment years using the YEAR() function.
18. Combine instructor first and last names using CONCAT().
19. Calculate running totals using window functions.
20. Categorize students as Senior or Junior using CASE statements.

## 🚀 How to Run the Project

1. Install MySQL Server and MySQL Workbench.
2. Open MySQL Workbench.
3. Create a new SQL query tab.
4. Copy the complete SQL project code.
5. Execute the SQL script from beginning to end.
6. Check the database and all five tables.
7. Execute SELECT queries to view the database records and query results.

## 📊 Sample Database Information

The project initially contains the following records:

| Table Name | Initial Records |
|---|---:|
| Departments | 2 |
| Students | 12 |
| Courses | 7 |
| Instructors | 4 |
| Enrollments | 18 |

**Note:** Additional records are inserted, updated, and deleted as part of the CRUD operations demonstration. After executing all DELETE statements, the database returns to its initial record counts.

## 💡 Learning Outcomes

Through this project, I learned:

- How to create and manage relational databases.
- How to create tables and establish relationships using Primary Keys and Foreign Keys.
- How to perform INSERT, UPDATE, and DELETE operations.
- How to retrieve information using INNER JOIN and LEFT JOIN.
- How to use aggregate functions such as COUNT(), AVG(), and MAX().
- How to apply GROUP BY and HAVING clauses.
- How to write nested subqueries.
- How to use SQL date and string functions.
- How to implement CASE statements.
- How to calculate running totals using Window Functions.
- How to retrieve and analyze information from multiple related tables.

---

**Project Name:** University Management System

**Technology:** MySQL

**Project Type:** Database Management System

Video Link:
https://drive.google.com/file/d/1kTPHT4JgkufvWozcAtlCBFBRWPKrU3od/view?usp=sharing
---

## ⭐ Conclusion

The University Management System is a practical MySQL database project that demonstrates essential database management concepts and SQL query-writing skills. It provides hands-on experience with relational database design, CRUD operations, different JOIN operations, subqueries, aggregate functions, date and string functions, and advanced SQL concepts such as CASE statements and Window Functions.

This project helped me improve my practical SQL knowledge and understand how relational databases are used to manage university information efficiently.
