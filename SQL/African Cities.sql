-- # Problem: https://www.hackerrank.com/challenges/african-cities/problem
-- # Score: 10

select CITY.name from City
join COUNTRY on COUNTRY.Code = City.CountryCode
where COUNTRY.CONTINENT = 'Africa';
