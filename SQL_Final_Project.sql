CREATE DATABASE University;

USE University;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL);

INSERT INTO Departments VALUES
(1, 'Computer Science'),
(2, 'Mathematics');

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    BirthDate DATE,
    EnrollmentDate DATE);

INSERT INTO Students VALUES
(1, 'John', 'Doe', 'john@gmail.com', '2000-01-15', '2022-08-01'),
(2, 'Jane', 'Smith', 'jane@gmail.com', '1999-05-25', '2021-08-01'),
(3, 'Rahul', 'Patel', 'rahul@gmail.com', '2001-03-10', '2023-07-15'),
(4, 'Priya', 'Shah', 'priya@gmail.com', '2002-04-12', '2023-08-01'),
(5, 'Amit', 'Joshi', 'amit@gmail.com', '2000-06-20', '2022-09-01'),
(6, 'Neha', 'Mehta', 'neha@gmail.com', '2001-11-05', '2024-01-10'),
(7, 'Karan', 'Desai', 'karan@gmail.com', '2002-02-18', '2024-06-01'),
(8, 'Riya', 'Patel', 'riya@gmail.com', '2001-07-22', '2023-09-01'),
(9, 'Dev', 'Sharma', 'dev@gmail.com', '2000-12-10', '2022-08-15'),
(10, 'Anjali', 'Verma', 'anjali@gmail.com', '2002-09-14', '2024-07-01'),
(11, 'Raj', 'Trivedi', 'raj@gmail.com', '2001-05-16', '2023-06-01'),
(12, 'Pooja', 'Rathod', 'pooja@gmail.com', '2002-10-21', '2024-08-01');

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    DepartmentID INT,
    Credits INT,
    FOREIGN KEY (DepartmentID)
    REFERENCES Departments(DepartmentID));

INSERT INTO Courses VALUES
(101, 'Introduction to SQL', 1, 3),
(102, 'Data Structures', 1, 4),
(103, 'Python Programming', 1, 4),
(104, 'Database Management', 1, 3),
(105, 'Web Development', 1, 3),
(106, 'Mathematics', 2, 4),
(107, 'Statistics', 2, 3);


CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    DepartmentID INT,
    Salary DECIMAL(10,2),
    FOREIGN KEY (DepartmentID)
    REFERENCES Departments(DepartmentID));

INSERT INTO Instructors VALUES
(1, 'Alice', 'Johnson', 'alice@gmail.com', 1, 60000),
(2, 'Eva', 'Lee', 'eva@gmail.com', 2, 55000),
(3, 'David', 'Brown', 'david@gmail.com', 1, 65000),
(4, 'Sara', 'Wilson', 'sara@gmail.com', 2, 58000);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID)
    REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID)
    REFERENCES Courses(CourseID));

INSERT INTO Enrollments VALUES
(1, 1, 101, '2022-08-05'),
(2, 1, 102, '2022-08-06'),
(3, 2, 101, '2021-08-05'),
(4, 2, 102, '2021-08-06'),
(5, 3, 101, '2023-07-20'),
(6, 3, 102, '2023-07-21'),
(7, 4, 101, '2023-08-05'),
(8, 4, 102, '2023-08-06'),
(9, 5, 101, '2022-09-05'),
(10, 5, 102, '2022-09-06'),
(11, 6, 101, '2024-01-15'),
(12, 6, 102, '2024-01-16'),
(13, 7, 101, '2024-06-05'),
(14, 8, 102, '2023-09-05'),
(15, 9, 101, '2022-08-20'),
(16, 10, 102, '2024-07-05'),
(17, 11, 101, '2023-06-05'),
(18, 12, 102, '2024-08-05');

SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Instructors;
SELECT * FROM Enrollments;
SELECT * FROM Departments;

INSERT INTO Departments
VALUES (3, 'Information Technology');

INSERT INTO Students
VALUES (13, 'Meera', 'Patel', 'meera@gmail.com',
'2003-05-10', '2025-08-01');

INSERT INTO Courses
VALUES (108, 'Artificial Intelligence', 1, 4);

INSERT INTO Instructors
VALUES (5, 'Ravi', 'Kumar', 'ravi@gmail.com', 1, 62000);

INSERT INTO Enrollments
VALUES (19, 13, 108, '2025-08-05');

SELECT * FROM Departments;
SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Instructors;
SELECT * FROM Enrollments;


UPDATE Departments
SET DepartmentName = 'IT Department'
WHERE DepartmentID = 3;

UPDATE Students
SET Email = 'meera123@gmail.com'
WHERE StudentID = 13;

UPDATE Courses
SET Credits = 5
WHERE CourseID = 108;

UPDATE Instructors
SET Salary = 65000
WHERE InstructorID = 5;

UPDATE Enrollments
SET EnrollmentDate = '2025-08-10'
WHERE EnrollmentID = 19;


DELETE FROM Enrollments
WHERE EnrollmentID = 19;

DELETE FROM Instructors
WHERE InstructorID = 5;

DELETE FROM Courses
WHERE CourseID = 108;

DELETE FROM Students
WHERE StudentID = 13;

DELETE FROM Departments
WHERE DepartmentID = 3;

SELECT *
FROM Students
WHERE EnrollmentDate >= '2023-01-01';

SELECT C.CourseID, C.CourseName, C.Credits
FROM Courses C
INNER JOIN Departments D
ON C.DepartmentID = D.DepartmentID
WHERE D.DepartmentName = 'Mathematics'
LIMIT 5;

SELECT
    C.CourseName,
    COUNT(E.StudentID) AS TotalStudents
FROM Courses C
INNER JOIN Enrollments E
ON C.CourseID = E.CourseID
GROUP BY C.CourseID, C.CourseName
HAVING COUNT(E.StudentID) > 5;

SELECT
    S.StudentID,
    S.FirstName,
    S.LastName
FROM Students S
INNER JOIN Enrollments E
ON S.StudentID = E.StudentID
INNER JOIN Courses C
ON E.CourseID = C.CourseID
WHERE C.CourseName IN
('Introduction to SQL', 'Data Structures')
GROUP BY S.StudentID, S.FirstName, S.LastName
HAVING COUNT(DISTINCT C.CourseName) = 2;

SELECT DISTINCT
    S.StudentID,
    S.FirstName,
    S.LastName,
    C.CourseName
FROM Students S
INNER JOIN Enrollments E
ON S.StudentID = E.StudentID
INNER JOIN Courses C
ON E.CourseID = C.CourseID
WHERE C.CourseName IN
('Introduction to SQL', 'Data Structures');

SELECT AVG(Credits) AS AverageCredits
FROM Courses;

SELECT MAX(I.Salary) AS MaximumSalary
FROM Instructors I
INNER JOIN Departments D
ON I.DepartmentID = D.DepartmentID
WHERE D.DepartmentName = 'Computer Science';


SELECT
    D.DepartmentName,
    COUNT(DISTINCT E.StudentID) AS TotalStudents
FROM Departments D
INNER JOIN Courses C
ON D.DepartmentID = C.DepartmentID
INNER JOIN Enrollments E
ON C.CourseID = E.CourseID
GROUP BY D.DepartmentID, D.DepartmentName;

SELECT
    S.StudentID,
    S.FirstName,
    S.LastName,
    C.CourseName,
    E.EnrollmentDate
FROM Students S
INNER JOIN Enrollments E
ON S.StudentID = E.StudentID
INNER JOIN Courses C
ON E.CourseID = C.CourseID;

SELECT
    S.StudentID,
    S.FirstName,
    S.LastName,
    C.CourseName
FROM Students S
LEFT JOIN Enrollments E
ON S.StudentID = E.StudentID
LEFT JOIN Courses C
ON E.CourseID = C.CourseID;

SELECT *
FROM Students
WHERE StudentID IN (
    SELECT E.StudentID
    FROM Enrollments E
    WHERE E.CourseID IN (
        SELECT CourseID
        FROM Enrollments
        GROUP BY CourseID
        HAVING COUNT(StudentID) > 10
    )
);


SELECT
    StudentID,
    EnrollmentDate,
    YEAR(EnrollmentDate) AS EnrollmentYear
FROM Students;

SELECT
    InstructorID,
    CONCAT(FirstName, ' ', LastName) AS FullName
FROM Instructors;

SELECT
    EnrollmentID,
    StudentID,
    CourseID,
    EnrollmentDate,
    COUNT(*) OVER (
        ORDER BY EnrollmentDate, EnrollmentID
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND CURRENT ROW
    ) AS RunningTotal
FROM Enrollments;

SELECT
    StudentID,
    FirstName,
    LastName,
    EnrollmentDate,
    CASE
        WHEN EnrollmentDate < DATE_SUB(CURDATE(), INTERVAL 4 YEAR)
        THEN 'Senior'
        ELSE 'Junior'
    END AS StudentStatus
FROM Students;

