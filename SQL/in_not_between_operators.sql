select * from EmployeeRecords

-- NOT Operator
-- FirstName should not be 'John'
select * from EmployeeRecords
where not FirstName = 'John'

-- first name should not be 'John' and salary should not be 60,000
select * from EmployeeRecords
where not FirstName = 'John'
and not Salary = 60000

-- BETWEEN Operator

select * from EmployeeRecords
where Salary between 70000 and 80000
-- OR
select * from EmployeeRecords
where Salary >= 70000 and Salary <= 80000

-- salary not between 70000 and 80000
select * from EmployeeRecords
where not Salary between 70000 and 80000
--OR
select * from EmployeeRecords
where Salary not between 70000 and 80000

-- IN Operator
-- Either 'HR' or 'IT'
select * from EmployeeRecords
where Department in ('HR', 'IT')

-- Neither 'HR' nor 'IT'
select * from EmployeeRecords
where Department not in ('HR', 'IT')
-- OR
select * from EmployeeRecords
where not Department in ('HR', 'IT')