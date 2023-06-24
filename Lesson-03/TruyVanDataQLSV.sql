USE quanlysinhvien;
SELECT * FROM student
WHERE StudentName LIKE 'h%';

SELECT * FROM class
WHERE EXTRACT(MONTH FROM StartDate) = 12;

SELECT * FROM subject
WHERE Credit BETWEEN 3 AND 5;

UPDATE student
SET ClassId = 2
WHERE StudentId = 1;

SELECT StudentName, SubName, Mark
FROM student, subject, mark
ORDER BY Mark DESC, StudentName ASC ;