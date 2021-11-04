-- Find all employees
select * from employee
order by salary desc;

-- Find all employees orderd by
-- sex and name
select * from employee
order by sex, first_name, last_name;

-- Find the first 5 employees
select * from employee
limit 5;

-- Find the first and last names of all employees
select first_name, last_name from employee;

-- Find the forename and surname of all employees
select first_name as forename, last_name as surname
from employee;

-- Find out all the differnt genders
select distinct sex from employee;

-- Find out all the differnt branch ids
select distinct branch_id from employee;

