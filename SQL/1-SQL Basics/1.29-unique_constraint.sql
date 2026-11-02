-- Case 1: creating a new table
create table test_unique(
	Student_ID int unique,
	Age tinyint not null, 
	FirstName varchar(256) not null unique,
	LastName varchar(256)
)

select * from test_unique

insert into test_unique values(1, 23, 'John', 'Wick')
insert into test_unique values(1, 22, 'John', 'Cena')
insert into test_unique values(null, 24, 'Nicholas', 'Cage')
insert into test_unique values(null, 24, 'Judy', 'Cena')

truncate table test_unique

-- Case 2: When the table already exists
alter table test_unique
add unique(LastName)