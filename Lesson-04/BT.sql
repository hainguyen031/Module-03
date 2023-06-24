USE QuanLySinhVien;

SELECT SubName, Credit
FROM subject
WHERE Credit = (SELECT MAX(Credit) FROM subject);

SELECT s.SubId, s.SubName, m.Mark
FROM subject s
JOIN mark m on s.SubId = m.SubId
WHERE m.Mark = (SELECT MAX(Mark) FROM mark);

SELECT s.StudentId, s.StudentName, AVG(Mark) AS 'AVG'
FROM student s
JOIN mark m on s.StudentId = m.StudentId
GROUP BY s.StudentId, s.StudentName
ORDER BY AVG(Mark) DESC;