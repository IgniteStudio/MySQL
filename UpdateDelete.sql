SELECT * FROM student;

DROP TABLE student;
CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20),
    major VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);

INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Kate', 'Sociology');
INSERT INTO student(name, major) VALUES('Claire', "Math");
INSERT INTO student(name, major) VALUES('Dave', 'Computer Science');
INSERT INTO student(name, major) VALUES('Patrick', 'Biology');

UPDATE student
SET major='Bio'
WHERE major = 'Biology';

UPDATE student
SET major='Comp Sci'
WHERE major='Computer Science';

UPDATE student
SET major='Comp Sci'
WHERE student_id =3;

UPDATE student
SET major='Biochemistry'
WHERE major='Bio' OR major='Chemistry';

SELECT * FROM student;

UPDATE student
SET name='Tom', major='undecided'
WHERE student_id =1;


UPDATE student
SET major='undecided';

DELETE FROM student
WHERE student_id =5;


DELETE FROM student
WHERE name = 'Tom' AND major='undecided';


DELETE FROM student;