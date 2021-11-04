drop table trigger_test;
create table trigger_test (
    message varchar(100)
);

DELIMITER $$ -- CHANGES DELIMITER FROM ; TO $$
create
    trigger my_trigger before INSERT
    on employee
    for each row begin
        insert into trigger_test values('added new employee');
    end$$
DELIMITER ; -- CHANGES DELIMITER BACK TO ;

-- CODE ABOVE IS DONE IN MYSQL COMMAND CLIENT

insert into employee
values(109, 'Oscar', 'Martinez', 
'1968-02-19', 'M', 69000, 106, 3);


insert into employee
values(110, 'Thomas', 'Martin', 
'1964-04-29', 'M', 169000, 106, 3);


insert into employee
values(111, 'Allison', 'Martin', 
'1964-04-29', 'F', 169000, 106, 3);


DELIMITER $$ -- CHANGES DELIMITER FROM ; TO $$
create
    trigger my_trigger before INSERT
    on employee
    for each row begin
        insert into trigger_test values(new.first_name);
    end$$
DELIMITER ;


select * from trigger_test;



DELIMITER $$
    drop 
        trigger if exists giraffe.trigger_test;
    end$$
DELIMITER ;

-- to drop a trigger you can drop 
-- all the tables 
-- or you could create a new trigger
-- by giving it a new name.
-- or using DROP TRIGGER [name];

DELIMITER $$
create
    trigger my_trigger1 before insert
    on employee
    for each row begin
        if NEW.sex = 'M' then
            insert into trigger_test values('added male employee');
        elseif NEW.sex = 'F' then
            insert into trigger_test values('added female');
        else
            insert into trigger_test values('added other employee');
        end if;
    end$$
DELIMITER ;


DELIMITER $$
create
    trigger my_trigger1 after update
    on employee
    for each row begin
        if NEW.sex = 'M' then
            insert into trigger_test values('added male employee');
        elseif NEW.sex = 'F' then
            insert into trigger_test values('added female');
        else
            insert into trigger_test values('added other employee');
        end if;
    end$$
DELIMITER ;
