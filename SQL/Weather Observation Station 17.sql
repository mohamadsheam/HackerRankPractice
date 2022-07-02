-- # Problem: https://www.hackerrank.com/challenges/weather-observation-station-17/problem
-- # Score: 15

select round(LONG_W,4) from station where LAT_N in (select min(LAT_N) from station where LAT_N > 38.7780);
