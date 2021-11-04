SELECT name, major FROM student;

SELECT student.name, student.major FROM student
ORDER BY name;

SELECT student.name, student.major FROM student
ORDER BY name DESC;

SELECT * FROM student
ORDER BY student_id DESC;

SELECT * FROM student
ORDER BY student_id ASC;

SELECT * FROM student
ORDER BY major, student_id;

SELECT * FROM student
ORDER BY major, student_id DESC;

SELECT * FROM student
LIMIT 2;

SELECT * FROM student
ORDER BY student_id DESC
LIMIT 2;

SELECT * FROM student
WHERE major='Biology';


SELECT * FROM student
WHERE major='Chemistry' OR major = 'Biology';

SELECT * FROM student
WHERE major <> 'Chemistry';

SELECT * FROM student
WHERE student_id < 3;


SELECT * FROM student
WHERE student_id < 3 AND name <> 'Jack';


SELECT * FROM student
WHERE name IN('Claire', 'Kate', 'Mike');


SELECT * FROM student
WHERE major IN('Biology', 'Math') AND student_id >2;

