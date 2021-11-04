
CREATE TABLE student (
    student_id INT,
    name VARCHAR(20),
    major VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);
SELECT * FROM student;

INSERT INTO student(student_id, name) VALUES(1, 'Jack');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student VALUES(3, NULL, "Math");
INSERT INTO student VALUES(4, 'Dave', 'Computer Science');
INSERT INTO student VALUES(5, 'Patrick', 'Chemistry');


