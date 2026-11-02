-- Case 1: The table doesn't exist
create table test_check(
	EID int,
	FirstName varchar(256),
	Age tinyint check(age>=18)
)

select * from test_check 
order by EID

insert into test_check values(1, 'Man', 20)
insert into test_check values(2, 'Jack', '18')
insert into test_check values(3, 'John', 17)

update test_check 
set eid = 7 
where eid = 1

update test_check 
set eid = 9 
where eid = 2

-- Case 2: Table exists
alter table test_check
add check(eid>5)

insert into test_check values(3, 'John', 19) -- not inserted
insert into test_check values(6, 'John', 19)