-- Case 1: Creating new table
create table test_pk_1(
	EID int primary key,
	gender char(1),
	Age tinyint,
	FirstName varchar(256)
);

select * from test_pk_1

insert into test_pk_1 values(1, 'M', 23, 'John')
insert into test_pk_1 values(1, 'F', 24, 'Judy') -- cannot be inserted
insert into test_pk_1 values(null, 'M', 25, 'Jade') -- cannot be inserted

-- Case 2: In existing table
create table test_pk_2(
	SID int not null unique,
	FirstName varchar(256),
	Age tinyint not null
);

-- assigning primary key to the combinations of two columns
alter table test_pk_2
add primary key(SID, age)

drop table test_pk_2

-- assigning primary key to one table only
alter table test_pk_2
add primary key(SID)