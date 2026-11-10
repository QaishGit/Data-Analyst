-- CLUSTERED INDEX

create database Test_Index
use Test_Index 

-- creating table 'Students'
drop table if exists students
create table Students(id int, name nvarchar(50), age int, gender varchar(20))

insert into Students values
(1, 'Raj', 23, 'M'),
(4, 'Nitin', 25, 'M'),
(3, 'Priya', 21, 'F'), 
(2, 'Nikita', 20, 'F'),
(5, 'Monica', 20, 'F');

select * from Students

-- creating a clustered index on 'ID' column od 'Students' table
create clustered index ix_1
on Students(ID)

drop index Students.ix_1

-- creating another index
create clustered index ix_2
on Students(ID desc)

drop index ix_2 on Students

-- creating another clustered index on combination of columns
create clustered index ix_3
on Students(gender desc, age)