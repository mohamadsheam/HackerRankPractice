-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-7/problem
-- # Score: 10

SELECT DISTINCT CITY FROM STATION WHERE RIGHT(CITY,1) IN ('A','E','I','O','U');
