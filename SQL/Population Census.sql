-- # Problem: https://www.hackerrank.com/challenges/asian-population/problem
-- # Score: 10

-- CITY.CountryCode and COUNTRY.Code are matching key columns.

select sum(city.population) from city join country
on country.Code = city.CountryCode
where country.CONTINENT= 'Asia';
