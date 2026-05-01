use schooldb;
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    class VARCHAR(10)
);

CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY,
    teacher_name VARCHAR(50)
);

CREATE TABLE Subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(50)
);


INSERT INTO Students VALUES (1, 'Anshul', 'Btech'),
(2, 'Rahul', 'BCA'),
(3, 'Priya', 'BCA'),
(4, 'Karan', 'BCA');

INSERT INTO Teachers VALUES (1, 'Amit Sir'),
(2, 'Neha Maam'),
(3, 'Rohit Sir');

INSERT INTO Subjects VALUES (1, 'Java'),
(2, 'Python'),
(3, 'Web Development'),
(4, 'DBMS');

CREATE TABLE Teacher_Subject (
    id INT AUTO_INCREMENT PRIMARY KEY,
    teacher_id INT,
    subject_id INT,
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);

CREATE TABLE Student_Teacher (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    teacher_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id)
);

INSERT INTO Teacher_Subject (teacher_id, subject_id) VALUES
(1, 1), 
(1, 2), 
(2, 3), 
(3, 4);  


INSERT INTO Student_Teacher (student_id, teacher_id) VALUES
(1, 1), 
(2, 2),  
(3, 1),  
(4, 3);


SELECT st.student_name, t.teacher_name
FROM Student_Teacher stt
JOIN Students st ON stt.student_id = st.student_id
JOIN Teachers t ON stt.teacher_id = t.teacher_id;

SELECT t.teacher_name, s.subject_name
FROM Teacher_Subject ts
JOIN Teachers t ON ts.teacher_id = t.teacher_id
JOIN Subjects s ON ts.subject_id = s.subject_id;


