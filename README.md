# 🎓 University Management System

## 📌 Project Overview

The **University Management System** is a MySQL-based database project designed to manage university information efficiently.

This project stores and manages information about students, departments, courses, instructors, and student enrollments. It demonstrates important SQL concepts such as database creation, table creation, CRUD operations, JOINs, subqueries, aggregate functions, and advanced SQL queries.

## 🎯 Project Objectives

- To create and manage a university database.
- To store student and instructor information.
- To manage departments and courses.
- To maintain student enrollment records.
- To perform CRUD operations using SQL.
- To retrieve meaningful information using SQL queries.
- To understand relationships between multiple tables.

## 🛠️ Technologies Used

- **Database:** MySQL
- **Language:** SQL
- **Tool:** MySQL Workbench

## 🗂️ Database Structure

Database Name: `University`

This project contains five tables:

| Table Name | Description |
|---|---|
| Departments | Stores department details. |
| Students | Stores student information. |
| Courses | Stores course details and department references. |
| Instructors | Stores instructor information and salary details. |
| Enrollments | Stores student course enrollment records. |

## 🔗 Table Relationships

- Departments → Courses (One-to-Many)
- Departments → Instructors (One-to-Many)
- Students → Enrollments (One-to-Many)
- Courses → Enrollments (One-to-Many)

## 📚 SQL Concepts Covered

### 1. Database Operations
- CREATE DATABASE
- USE DATABASE
- CREATE TABLE

### 2. Data Manipulation Language (DML)
- INSERT
- UPDATE
- DELETE

### 3. Data Query Language (DQL)
- SELECT
- WHERE
- DISTINCT
- ORDER BY
- LIMIT

### 4. SQL JOIN Operations
- INNER JOIN
- LEFT JOIN
- Multiple Table JOIN

### 5. Aggregate Functions
- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

### 6. Grouping and Filtering
- GROUP BY
- HAVING

### 7. Subqueries
- Nested SELECT queries
- IN operator
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
- COUNT(DISTINCT)

## ⚙️ Project Features

1. Create and manage university departments.
2. Add and update student information.
3. Manage courses and their credits.
4. Maintain instructor details and salaries.
5. Enroll students in different courses.
6. Retrieve students enrolled after a specific date.
7. Find courses belonging to a particular department.
8. Calculate the total number of students in each course.
9. Identify students enrolled in multiple courses.
10. Calculate average course credits.
11. Find the maximum instructor salary.
12. Display department-wise student enrollment.
13. Retrieve student and course information using JOINs.
14. Identify students enrolled in courses using subqueries.
15. Calculate running totals using window functions.
16. Categorize students as Senior or Junior using CASE.

## 🚀 How to Run the Project

1. Install MySQL Server and MySQL Workbench.
2. Open MySQL Workbench.
3. Create a new SQL query tab.
4. Copy the complete SQL project code.
5. Execute the SQL script step by step.
6. Check the database and tables.
7. Execute SELECT queries to view the results.

## 📊 Sample Database Information

| Table | Initial Records |
|---|---:|
| Departments | 2 |
| Students | 12 |
| Courses | 7 |
| Instructors | 4 |
| Enrollments | 18 |

*Note: Additional records are inserted, updated, and deleted in the CRUD demonstration section of the SQL script.*

## 💡 Learning Outcomes

Through this project, I learned:

- How to create and manage relational databases.
- How to establish relationships using Primary Keys and Foreign Keys.
- How to perform INSERT, UPDATE, and DELETE operations.
- How to retrieve data using different JOIN operations.
- How to use aggregate functions and subqueries.
- How to work with date and string functions.
- How to implement advanced SQL concepts such as CASE statements and Window Functions.

**Project Name:** University Management System

**Technology:** MySQL

**Project Type:** Database Management System

Video Link :

---

⭐ **Conclusion**

The University Management System is a practical MySQL project that demonstrates database management and SQL query-writing skills. It provides a clear understanding of relational database concepts and helps develop practical knowledge of SQL.
