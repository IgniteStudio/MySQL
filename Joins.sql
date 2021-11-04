-- Joins
insert into branch 
values (4, 'Buffalo', NULL, NULL);

select * from branch;

-- FInd all branches and the names
-- of their manager

select employee.emp_id, employee.first_name,
branch.branch_name
from employee
join branch 
on employee.emp_id = branch.mgr_id;
--inner join gets all values that meet the condition

--

select employee.emp_id, employee.first_name,
branch.branch_name
from employee
left join branch
on employee.emp_id = branch.mgr_id;
-- left join get all values that meet  
-- condition from left table or employee in this case

--

select employee.emp_id, employee.first_name,
branch.branch_name
from employee
right join branch
on employee.emp_id = branch.mgr_id;
-- right join gets all values that meet 
-- condition from right table or branch in this case

-- 




