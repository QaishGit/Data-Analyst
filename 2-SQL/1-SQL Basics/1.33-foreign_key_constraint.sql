-- Case 1: Create new table
-- first creating table with primary key
create table test_pk_3(
	ID int primary key,
	Name varchar(256)
)

select * from test_pk_3

insert into test_pk_3 values(1, 'Jack'), (2, 'John'), (3, 'Jane')

-- now creating table with foreign key
create table test_fk_1(
	ID int foreign key references test_pk_3(ID),
	Course varchar(256)
)

select * from test_fk_1

insert into test_fk_1 values(1, 'Maths')
insert into test_fk_1 values(null, 'Sceince')
insert into test_fk_1 values(4, 'Maths') -- cannot be inserted

-- Case 2: The table already exists
create table test_fk_2(ID int, Course varchar(256))

alter table test_fk_2
add foreign key(ID) references test_pk_3(ID)