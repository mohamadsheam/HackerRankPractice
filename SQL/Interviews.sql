-- # Problem: https://www.hackerrank.com/challenges/interviews/problem
-- # Score: 50


SELECT  con.contest_id, con.hacker_id, con.name, IFNULL(SUM(total_submissions),0),
        IFNULL(sum(total_accepted_submissions),0),
        IFNULL(sum(total_views),0),
        IFNULL(sum(total_unique_views),0)
FROM Contests con

 JOIN Colleges col
    ON con.contest_id = col.contest_id
 JOIN Challenges cha
    ON cha.college_id = col.college_id

LEFT JOIN (SELECT challenge_id
    ,  sum(total_views) as total_views
    ,  sum(total_unique_views) as total_unique_views
FROM View_Stats
GROUP BY challenge_id ) vs
    ON vs.challenge_id = cha.challenge_id

LEFT JOIN
    (SELECT challenge_id
    ,sum(total_submissions) as total_submissions
    ,sum(total_accepted_submissions) as total_accepted_submissions FROM Submission_Stats
    GROUP BY challenge_id) ss
    ON ss.challenge_id = cha.challenge_id

GROUP BY con.contest_id, con.hacker_id, con.name
having (IFNULL(SUM(total_submissions),0) +
    IFNULL(sum(total_accepted_submissions),0) +
    IFNULL(sum(total_views),0) +
     IFNULL(sum(total_unique_views),0)
     ) > 0

ORDER BY con.contest_ID
