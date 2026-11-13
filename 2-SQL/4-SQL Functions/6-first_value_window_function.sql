-- FIRST_VALUE() Window Function

select * from EmployeeSalaries

-- Adding a new column that shows minimum salary available in the table
select *, 
FIRST_VALUE(Salary) over(order by salary) [Minimum Salary]
from EmployeeSalaries

-- we want to show the Employee's name that has the minimum salary
select *, 
FIRST_VALUE(EmployeeName) over(order by salary) [Employee with Minimum Salary]
from EmployeeSalaries

-- we want to show Employee name along with his salary 
select *, 
FIRST_VALUE(EmployeeName) over(order by salary) [Employee with Minimum Salary],
FIRST_VALUE(Salary) over(order by salary) [Minimum Salary]
from EmployeeSalaries

-- using partition by clause 
select *, 
FIRST_VALUE(EmployeeName) over(partition by department order by salary) [Employee with Minimum Salary],
FIRST_VALUE(Salary) over(partition by department order by salary) [Minimum Salary]
from EmployeeSalaries