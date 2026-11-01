-- creating new database 
create database constraints

use constraints

-- Case 1: we will have to create a new table
create table test_not_null(
	Employee_ID int not null,
	Age tinyint,
	FirstName varchar(256)
);

select * from test_not_null

select * from INFORMATION_SCHEMA.COLUMNS 
where TABLE_NAME = 'test_not_null'

insert into test_not_null values(1, 24, 'Cash')
insert into test_not_null values(null, 24, 'Cash')
insert into test_not_null values(2, 24, null)


-- Case 2: the table already exists
-- converting 'Age' column to 'not null'
alter table test_not_null
alter column Age tinyint not null

insert into test_not_null values(1, null, 'Raj')

-- now converting 'FirstName' column to 'not null'
alter table test_not_null
alter column FirstName varchar(256) not null -- this will not be converted into 'not null' because
--'FirstName' already consist of a 'null value'