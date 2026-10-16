select * from dbo.Employees

-- Inserting values in all columns
insert into dbo.Employees(EmployeeID, FirstName, LastName, Department, Salary, HireDate)
values(6, 'John', 'Doe', 'Finance', 80000, '2024-03-01')

-- Inserting values in selected columns
insert into dbo.Employees(EmployeeID, FirstName, Salary, HireDate)
values(7, 'Jade', 100000, '2024-06-01')

-- Inserting using normal way
insert into dbo.Employees values(8, 'Judy', 'Foxx', 'HR', 90000, '2024-07-01')

-- Information about all columns
select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'Employees'