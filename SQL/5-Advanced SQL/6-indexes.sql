-- INDEX

select * from dbo.Employees

-- creating index on 'Salary' column
create index IX_1 
on dbo.Employees(Salary desc)

-- creating another index on combination of columns
create index IX_2
on dbo.Employees(FirstName, LastName)

-- dropping an index
drop index dbo.Employees.IX_1