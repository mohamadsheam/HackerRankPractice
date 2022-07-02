-- # Problem: hackerrank.com/challenges/earnings-of-employees/problem
-- # Score: 20

SELECT CONCAT(MAX(months * salary),' ',COUNT(*))
FROM employee GROUP BY salary
HAVING MAX(months * salary) = (SELECT MAX(months * salary) from employee);
