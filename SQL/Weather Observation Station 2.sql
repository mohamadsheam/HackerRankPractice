-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-2/problem
-- # Score: 15

select ROUND(sum(lat_n), 2) ,ROUND(sum(long_W), 2) from STATION ;
