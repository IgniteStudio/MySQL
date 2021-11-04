
CREATE TABLE student (
    student_id INT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) UNIQUE,
    PRIMARY KEY(student_id)
);
SELECT * FROM student;

INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student VALUES(3, NULL, "Math");
INSERT INTO student VALUES(4, 'Dave', 'Computer Science');
INSERT INTO student VALUES(5, 'Patrick', 'Chemistry');
INSERT INTO student VALUES(6, 'Patrick', 'Chemistry');

