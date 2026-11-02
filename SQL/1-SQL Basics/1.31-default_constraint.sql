-- Case 1: The table doesn't exist
create table test_default(
	EID int default 5,
	FirstName varchar(256) default 'Rohit',
	LastName varchar(256),
	Age tinyint
)

select * from test_default

insert into test_default values(1, 'John', 'Wick', 23)
insert into test_default(LastName, Age) values('Raj', 24)
insert into test_default(LastName) values('Zenin')

-- Case 2: The table already exists
alter table test_default
add default 18 for age

insert into test_default(LastName) values('Itadori')