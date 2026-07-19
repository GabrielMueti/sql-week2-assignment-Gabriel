SELECT * FROM students;
SELECT * FROM subjects;
SELECT * FROM exam_results;


SELECT *
FROM students
WHERE class='Form 4';

SELECT *
FROM subjects
WHERE department='Sciences';

SELECT *
FROM exam_results
WHERE marks>=70;

SELECT *
FROM students
WHERE gender='F';

SELECT *
FROM students
WHERE class='Form 3'
AND city='Nairobi';


SELECT *
FROM students
WHERE class='Form 2'OR class='Form 4';