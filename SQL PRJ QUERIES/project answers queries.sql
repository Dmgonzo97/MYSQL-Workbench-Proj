USE project_schema;

SELECT *
FROM students;

SELECT *
FROM professors;

SELECT *
FROM classes;

SELECT *
FROM enrollment;

-- AVG Grade per Professor
SELECT professor_name AS 'Professor Name', ROUND(AVG(enrollment_grade)) AS 'Average Grade'
FROM enrollment
JOIN professors
ON  enrollment_professor_id = professor_id
GROUP BY professor_name
ORDER BY AVG(enrollment_grade) ASC;

--  Top Grade for each Student
SELECT student_name AS 'Student Name', MAX(enrollment_grade) AS 'Top Grade'
FROM enrollment
JOIN students
ON enrollment_student_id = student_id
GROUP BY student_name
ORDER BY MAX(enrollment_grade) DESC;

-- Students Grouped by their Courses
SELECT class_name AS 'Classes', student_name AS 'Students'
FROM enrollment
JOIN students
ON enrollment_student_id = student_id
JOIN classes
on enrollment_class_id = class_id
ORDER BY class_name;

-- Summary report for Courses, their grade AVGs, sorted by most challenging
SELECT class_name AS 'Course', ROUND(AVG(enrollment_grade)) AS 'Average Grade'
FROM enrollment
JOIN classes
ON enrollment_class_id = class_id
GROUP BY class_name
ORDER BY AVG(enrollment_grade) ASC;

-- Which Students and Professors have the most classes in common
SELECT professor_name AS 'Professor', student_name AS 'Student'
FROM professors
JOIN enrollment
ON enrollment_professor_id = professor_id
JOIN students
ON enrollment_student_id = student_id
GROUP BY enrollment_student_id HAVING count(*) >= 5;