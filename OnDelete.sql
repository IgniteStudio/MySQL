-- On Delete Set
-- used on foreign keys only
-- places value in place of deleted item
delete from employee
where employee.emp_id = 102;

select * from employee;

-- on delete cascade deletes the entire 
-- record completely...row wise
-- primary keys can't be NULL so you have
-- to use cascade to delete the record

delete from branch
where branch_id = 2;

select * from branch;