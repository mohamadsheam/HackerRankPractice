-- # Problem: https://www.hackerrank.com/challenges/placements/problem
-- # Score: 40

SELECT NAME
FROM students
JOIN packages p1 on students.id=p1.id
JOIN friends on students.id=friends.id
JOIN packages p2 on friends.Friend_ID=p2.id
Where p1.Salary< p2.Salary
ORDER BY p2.salary;
