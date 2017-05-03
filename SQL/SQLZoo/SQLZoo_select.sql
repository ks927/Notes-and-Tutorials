# List each country name where the population is larger than that of 'Russia'.
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

# Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.
SELECT name from world
WHERE continent = 'Europe' AND gdp/population >
(SELECT gdp/population FROM world
where name = 'United Kingdom');

# List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.
SELECT name, continent FROM world
WHERE continent IN ('South America', 'Oceania')
ORDER BY name;

# Which country has a population that is more than Canada but less than Poland? Show the name and the population.
SELECT name, population FROM world
WHERE population > (SELECT population FROM world
WHERE name = 'CANADA') AND population <
(SELECT population FROM world
WHERE name = 'POLAND')

# Show the name and the population of each country in Europe. Show the population as a percentage of the population of Germany.
LECT name, CONCAT(ROUND(population/(SELECT population FROM world
WHERE name = 'Germany')*100,0), '%') FROM world
WHERE continent = 'Europe'

# Which countries have a GDP greater than every country in Europe? [Give the name only.] (Some countries may have NULL gdp values)
SELECT name FROM world
WHERE gdp > ALL(SELECT gdp FROM world
WHERE continent = 'Europe' AND gdp>0)
