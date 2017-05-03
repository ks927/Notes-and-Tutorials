# CREATE TABLE

create table myemployees_ks2709
(first varchar, last varchar, title varchar, age int, salary int);

# INSERT INTO

insert into myemployees_ks2709
(first, last, title, age, salary)
values ('Jonie', 'Weber', 'Secretary', 28, 19500.00)
insert into myemployees_ks2709
(first, last, title, age, salary)
values('Potsy', 'Weber', 'Programmer', 32, 45300.00);
insert into myemployees_ks2709
(first, last, title, age, salary)
values('Dirk', 'Smith', 'Programmer II', 45, 75020.00)
(first, last, title, age, salary)
values('Kyle', 'Sheehan', 'Intern', 26, 35000.00)
(first, last, title, age, salary)
values('Becca', 'Gullickson', 'Designer', 23, 45000.00)


# select all columns from everyone in table
SELECT * from myemployees_ks2709

# select all columns for everyone w/ salary over 30000
SELECT * from myemployees_ks2709
WHERE salary > 30000

# select first and last names for everyone under 30
SELECT first, last from myemployees_ks2709
WHERE age < 30

# select first name, last name, salary for any Programmer
SELECT first, last, salary from myemployees_ks2709
WHERE title LIKE '%Programmer%'

# select all columns for everyone w/ last name containing 'ebe'
SELECT * from myemployees_ks2709
WHERE last LIKE '%ebe%'

# select first name for everyone whos first name == 'Potsy'
SELECT first from employees_ks2709
WHERE first = 'Potsy'

# everyone over 80 years old
SELECT * from myemployees_ks2709
WHERE age > 80

# all columns for everyone last name ends in ith
SELECT * from myemployees_ks2709
WHERE last LIKE 'ith%'

# UPDATE RECORDS

# Jonie Weber just got married to Bob Williams. She has requested that her last name be updated to Weber-Williams.
update myemployees_ks2709
set last = 'Weber-Williams'
where last = 'Weber';

# Dirk Smith's birthday is today, add 1 to his age.
update myemployees_ks2709
set age = age+1
where first = 'Dirk' and last = 'Smith';

# All secretaries are now called "Administrative Assistant". Update all titles accordingly.
update myemployees_ks2709
set title = 'Administrative Assistant'
where title = 'Secretary';

# Everyone that's making under 30000 are to receive a 3500 a year raise.
update myemployees_ks2709
set salary = salary+3500
where salary < 30000;

# Everyone that's making over 33500 are to receive a 4500 a year raise.
update myemployees_ks2709
set salary = salary+4500
where salary > 33500;

# All "Programmer II" titles are now promoted to "Programmer III".
update myemployees_ks2709
set title = 'Programmer III'
where title = 'Programmer II';

# All "Programmer" titles are now promoted to "Programmer II".
update myemployees_ks2709
set title = 'Programmer II'
where title = 'Programmer';

# DELETE RECORDS

# Jonie Weber-Williams just quit, remove her record from the table.
delete from myemployees_ks2709
where first = 'Jonie' and last = 'Weber-Williams';

# It's time for budget cuts. Remove all employees who are making over 70000 dollars.
delete from myemployees_ks2709
where salary > 70000;





