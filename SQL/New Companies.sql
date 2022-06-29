-- # Problem: hackerrank.com/challenges/the-company/problem
-- # Score: 30

-- print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.


SELECT Company.company_code, Company.founder,
(SELECT COUNT(DISTINCT lead_manager.lead_manager_code) FROM lead_manager WHERE lead_manager.company_code=company.company_code) as l,
(SELECT COUNT(DISTINCT senior_manager.senior_manager_code) FROM senior_manager WHERE senior_manager.company_code=company.company_code) AS s,
(SELECT COUNT(DISTINCT manager.manager_code) FROM manager WHERE manager.company_code=company.company_code) AS m,
(SELECT COUNT(DISTINCT employee.employee_code) FROM employee WHERE employee.company_code=company.company_code) AS e

FROM Company

ORDER BY Company.company_code;
