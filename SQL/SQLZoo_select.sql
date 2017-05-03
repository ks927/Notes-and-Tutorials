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

#
