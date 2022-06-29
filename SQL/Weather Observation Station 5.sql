-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-5/problem
-- # Score: 30

SELECT CITY, length(CITY) FROM STATION
ORDER BY length(CITY),CITY ASC
LIMIT 1;
SELECT CITY, length(CITY) FROM STATION
ORDER BY length(CITY) DESC
LIMIT 1;
