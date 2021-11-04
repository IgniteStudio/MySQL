select * from employee;
select * from works_with;

-- Find the numbers of employees
select count(super_id) 
from employee;

-- FInd the number of female employees born after 1979
select count(emp_id)
from employee
where sex= 'F' AND birth_day > '1970-01-01';

-- Find the average of all employee salaries
select AVG(salary) from employee;

-- Find above for males
select AVG(salary) from employee
where sex = 'M';

-- Find sum of all employee salaries
select SUM(salary) from employee;

-- Find out how many males and females there are
select COUNT(sex), sex from employee
group by sex;

-- Find total sales of each salesman
select emp_id, sum(total_sales)
from works_with
group by emp_id;

-- Find total sales of each client
select client_id, sum(total_sales)
from works_with
group by client_id;

