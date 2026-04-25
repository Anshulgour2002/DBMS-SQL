CREATE DATABASE college_db;
USE college_db;

CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    age INT,
    marks INT
);

INSERT INTO students VALUES (1, 'Anshul', 22, 85);
INSERT INTO students VALUES (2, 'Rahul', 21, 90);

Select * from students;
SELECT * FROM students WHERE marks > 80;
SELECT * FROM students ORDER BY marks ASC;
SELECT MIN(marks) FROM students;
SELECT MAX(marks) FROM students;

UPDATE students SET marks = 95 WHERE id = 1;








CREATE TABLE students2 (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);
INSERT INTO students2 VALUES (1, 'Anshul', 'anshul@gmail.com');
INSERT INTO students2 VALUES (2, 'Rahul', 'rahul@gmail.com');

CREATE TABLE courses (
    course_id INT,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES students2(id)
);
INSERT INTO courses VALUES (101, 1);
INSERT INTO courses VALUES (102, 2);

select * from courses;




ALTER TABLE students2 ADD email VARCHAR(100) UNIQUE;
