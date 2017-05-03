# You can use WHERE name LIKE 'B%' to find the countries that start with "B".
SELECT name FROM world
  WHERE name LIKE 'Y%';

# Find the countries that end with y
SELECT name FROM world
  WHERE name LIKE '%y'

# Luxembourg has an x - so does one other country. List them both.
SELECT name FROM world
  WHERE name LIKE '%x%'

# Iceland, Switzerland end with land - but are there others?
SELECT name FROM world
  WHERE name LIKE '%land'

# Columbia starts with a C and ends with ia - there are two more like this.
SELECT name FROM world
  WHERE name LIKE 'C%' AND name LIKE '%ia'

# Greece has a double e - who has a double o?
SELECT name FROM world
  WHERE name LIKE '%oo%'

# Bahamas has three a - who else?
SELECT name FROM world
  WHERE name LIKE '%a%a%a%'

# India and Angola have an n as the second character. You can use the underscore as a single character wildcard.
# Find the countries that have "t" as the second character.
SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name

# Lesotho and Moldova both have two o characters separated by two other characters.
# Find the countries that have two "o" characters separated by two others.
SELECT name FROM world
 WHERE name LIKE '%o__o%'

# Cuba and Togo have four characters names.
# Find the countries that have exactly four characters.
SELECT name FROM world
 WHERE LENGTH(name) = 4

# The capital of Luxembourg is Luxembourg. Show all the countries where the capital is the same as the name of the country
SELECT name FROM world
 WHERE name = capital

# The capital of Mexico is Mexico City. Show all the countries where the capital has the country together with the word "City".




