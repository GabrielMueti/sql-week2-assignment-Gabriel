SELECT * FROM students;
SELECT * FROM subjects;
SELECT * FROM exam_

SELECT COUNT(*) AS form_3_students
FROM students
WHERE class='Form 3';


SELECT COUNT(*) AS marks_above_70
FROM exam_results
WHERE marks>=70;


SELECT
    result_id,
    student_id,
    subject_id,
    marks,

    CASE
        WHEN marks>=80 THEN 'Distinction'
        WHEN marks>=60 THEN 'Merit'
        WHEN marks>=40 THEN 'Pass'
        ELSE 'Fail'
    END AS performance

FROM exam_results;


SELECT
    first_name,
    last_name,
    class,

    CASE
        WHEN class IN ('Form 3','Form 4') THEN 'Senior'
        WHEN class IN ('Form 1','Form 2') THEN 'Junior'
    END AS student_level

FROM students;