USE project_schema

SELECT *
FROM students;

SELECT *
FROM professors;

SELECT *
FROM classes;

SELECT *
FROM enrollment;


INSERT INTO students(student_name)
VALUES
('Deion'),
('Ben'),
('John'),
('Kevin'),
('Riley'),
('Ryan');

INSERT INTO classes(class_name)
VALUES
('Coding Foundations'),
('FullStack Development'),
('MySql Development');

INSERT INTO professors(professor_name)
VALUES
('Mr Trenton'),
('Mr Roberts'),
('Mr Estrada');

INSERT INTO enrollment(class_id, professor_id, student_id, grade)
VALUES
(1, 3, 1, 59),
(1, 3, 4, 76),
(1, 3, 5, 50),
(1, 3, 3, 88);

INSERT INTO enrollment(class_id, professor_id, student_id, grade)
VALUES
(2, 1, 3, 87),
(2, 1, 6, 89),
(2, 1, 4, 98),
(2, 1, 5, 66);

INSERT INTO enrollment(class_id, professor_id, student_id, grade)
VALUES
(3, 2, 1, 87),
(3, 2, 2, 86),
(3, 2, 5, 99),
(3, 2, 4, 92);