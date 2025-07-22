CREATE DATABASE InternshipDB;

USE InternshipDB;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    department VARCHAR(50)
);

CREATE TABLE Companies (
    company_id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100),
    domain VARCHAR(100)
);

CREATE TABLE Internships (
    internship_id INT PRIMARY KEY,
    student_id INT,
    company_id INT,
    start_date DATE,
    end_date DATE,
    stipend DECIMAL(10, 2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (company_id) REFERENCES Companies(company_id)
);
