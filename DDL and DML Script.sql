-- Q1. Create schema and use it
CREATE SCHEMA greenwood_academy;

SET search_path TO greenwood_academy;

--Create students table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(1),
    date_of_birth DATE,
    class VARCHAR(10),
    city VARCHAR(50)
);

--Create subjects table
CREATE TABLE subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL UNIQUE,
    department VARCHAR(50),
    teacher_name VARCHAR(100),
    credit_hours INT
);

--Create exam_results table
CREATE TABLE exam_results (
    result_id INT PRIMARY KEY,
    student_id INT NOT NULL  FOREIGN KEY (student_id) REFERENCES students(student_id),
    subject_id INT NOT NULL  FOREIGN KEY (subject_id) REFERENCES subjects(subject_id),
    marks INT NOT NULL,
    exam_date DATE,
    grade VARCHAR(2),

);

-- Add phone_number column
ALTER TABLE students
ADD COLUMN phone_number VARCHAR(20);

--Rename credits column
ALTER TABLE subjects
RENAME COLUMN credit_hours TO credit_hours;

--Drop phone_number column
ALTER TABLE students
DROP COLUMN phone_number;

-- Insert students
INSERT INTO students
VALUES
(1,'Amina','Wanjiku','F','2008-03-12','Form 3','Nairobi'),
(2,'Brian','Ochieng','M','2007-07-25','Form 4','Mombasa'),
(3,'Cynthia','Mutua','F','2008-11-05','Form 3','Kisumu'),
(4,'David','Kamau','M','2007-02-18','Form 4','Nairobi'),
(5,'Esther','Akinyi','F','2009-06-30','Form 2','Nakuru'),
(6,'Felix','Otieno','M','2009-09-14','Form 2','Eldoret'),
(7,'Grace','Mwangi','F','2008-01-22','Form 3','Nairobi'),
(8,'Hassan','Abdi','M','2007-04-09','Form 4','Mombasa'),
(9,'Ivy','Chebet','F','2009-12-01','Form 2','Nakuru'),
(10,'James','Kariuki','M','2008-08-17','Form 3','Nairobi');

--  Insert subjects
INSERT INTO subjects
VALUES
(1,'Mathematics','Sciences','Mr. Njoroge',4),
(2,'English','Languages','Ms. Adhiambo',3),
(3,'Biology','Sciences','Ms. Otieno',4),
(4,'History','Humanities','Mr. Waweru',3),
(5,'Kiswahili','Languages','Ms. Nduta',3),
(6,'Physics','Sciences','Mr. Kamande',4),
(7,'Geography','Humanities','Ms. Chebet',3),
(8,'Chemistry','Sciences','Ms. Muthoni',4),
(9,'Computer Studies','Sciences','Mr. Oduya',3),
(10,'Business Studies','Humanities','Ms. Wangari',3);

-- Insert exam results
INSERT INTO exam_results
VALUES
(1,1,1,78,'2024-03-15','B'),
(2,1,2,85,'2024-03-16','A'),
(3,2,1,92,'2024-03-15','A'),
(4,2,3,55,'2024-03-17','C'),
(5,3,2,49,'2024-03-16','D'),
(6,3,4,71,'2024-03-18','B'),
(7,4,1,88,'2024-03-15','A'),
(8,4,6,63,'2024-03-19','C'),
(9,5,5,39,'2024-03-20','F'),
(10,6,9,95,'2024-03-21','A');


SELECT * FROM students;
SELECT * FROM subjects;
SELECT * FROM exam_results;

-- Update Esther's city
UPDATE students
SET city='Nairobi'
WHERE student_id=5;

--Correct marks
UPDATE exam_results
SET marks=59
WHERE result_id=5;

-- Delete cancelled result
DELETE FROM exam_results
WHERE result_id=9;