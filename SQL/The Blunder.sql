-- # Problem: https://www.hackerrank.com/challenges/the-blunder/problem
-- # Score: 15

SELECT CEIL((AVG(salary)) - (AVG(REPLACE(salary, '0', '')))) AS avg_salary FROM employees;
