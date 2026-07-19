SELECT * FROM students;
SELECT * FROM subjects;
SELECT * FROM exam_


SELECT * FROM exam_results
WHERE marks BETWEEN 50 AND 80;


SELECT * FROM exam_results
WHERE exam_date BETWEEN '2024-03-15' AND '2024-03-18';


SELECT * FROM students
WHERE city IN ('Nairobi','Mombasa','Kisumu');


SELECT * FROM students
WHERE class NOT IN ('Form 2','Form 3');




SELECT * FROM students
WHERE first_name LIKE 'A%' OR first_name LIKE 'E%';

-
SELECT * FROM subjects
WHERE subject_name LIKE '%Studies%';