-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-6/problem
-- # Score: 10

SELECT CITY FROM STATION WHERE SUBSTRING(CITY,1,1) IN ('A','E','I','O','U');
