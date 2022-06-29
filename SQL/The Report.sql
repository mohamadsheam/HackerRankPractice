-- # Problem: https://www.hackerrank.com/challenges/the-report/problem
-- # Score: 20


SELECT
    CASE
        WHEN G.Grade<8 THEN NULL ELSE S.Name
    END AS Name,
    G.Grade, S.Marks
FROM Students S

JOIN Grades G ON S.Marks BETWEEN G.Min_Mark AND G.Max_Mark
ORDER BY G.Grade DESC, Name
