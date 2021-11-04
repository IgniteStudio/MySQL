-- Unions

-- Find a list of employee and branch names
-- use branch_id 
-- tables must have same number of columns and data types
select first_name as Company_Names 
from employee
union
select branch_name from branch
union
select client_name from client;

-- Find a list of all clients and branch
-- suppliers' names

select client_name as Name, client.branch_id as Branch_ID
from client
UNION
select supplier_name, branch_supplier.branch_id 
from branch_supplier;

-- Find a list of all money spent
-- on salary or 
-- earned through sales by the Company


select salary as Money_inout
from employee
UNION
select total_sales
from works_with;





