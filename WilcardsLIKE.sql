select * from client;
-- % = any # characters, _ = one character

-- Find any client's who are an LLC(end)

select * from client 
where client_name like '%LLC';

-- FInd any branch suppliers with Label in
-- their business name
select * from branch_supplier;

select supplier_name
from branch_supplier 
where supplier_name like '%label%';

-- Find any employee born in October

select first_name, last_name, birth_day
from employee
where birth_day like '____-02%';

-- Find any clients who are schools
select * from client
where client_name like '%school%';



