select * from Employees	

insert into Employees (EmployeeID, FirstName, LastName)
values (9, 'John', 'Wick')

-- selecting records for which 'Department' is 'Null'
select * from Employees
where Department is null

-- selecting records for which 'Department' is 'Null'
select * from Employees
where Department is not null