select * from Employees

-- TOP N
-- fetching top 2 records
select top 2 * from Employees

-- fetcing top 3 selected columns
select top 3 EmployeeID, concat(FirstName, ' ', LastName) as [Full Name] from Employees