-- Nested select statements

-- Find names of all employees who have
-- sold over 30k to a single client

-- break down the problem into simpler steps
-- names of employees
-- total sales and clients
select first_name, last_name from employee;

select works_with.emp_id
from works_with
where works_with.total_sales > 30000;
-- no need to use total sales, just use emp_id
-- to connect the two tables like in join


select employee.first_name, employee.last_name 
from employee
where employee.emp_id in (
    select works_with.emp_id
    from works_with
    where works_with.total_sales > 30000
);

-- Find all the clients handled by the branch
-- that Michael Scott manages
-- Assume you know Michael's ID
select * from client;

select client.client_name 
from client
where client.branch_id = (
    select branch.branch_id 
    from branch
    where branch.mgr_id = 102
    limit 1 -- because more than one branch can return
);


