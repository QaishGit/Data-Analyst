select * from Employees

select * into #1
from Employees

select * from #1

-- updating 'Department' column's null value to 'IT'
update #1
set Department = 'IT'
where Department is null

-- updating another column
update #1
set LastName = 'Watson'
where LastName is null

-- updating more than one column at a time
update #1
set Salary = 89000, HireDate = '2023-01-01'
where EmployeeID = 9