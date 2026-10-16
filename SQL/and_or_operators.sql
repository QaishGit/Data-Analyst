select * from EmployeeRecords

-- AND Operator
select * from EmployeeRecords
where LastName = 'Miller'
and EmployeeID = 3

select * from EmployeeRecords
where LastName = 'Miller'
and EmployeeID = '3'

-- OR Operator
select * from dbo.EmployeeRecords
where Department = 'HR'
or Department = 'Finance'

-- AND and OR Operators
select * from dbo.EmployeeRecords
where Department = 'HR'
or Department = 'Finance'
and Salary = 60000
-- OR
select * from dbo.EmployeeRecords
where (Department = 'HR' or Department = 'Finance')
and Salary = 60000