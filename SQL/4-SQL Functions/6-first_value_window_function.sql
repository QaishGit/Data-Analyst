select * from EmployeeSalaries

-- Adding a new column that shows minimum salary available in the table
select *, 
FIRST_VALUE(Salary) over(order by salary) [Minimum Salary]
from EmployeeSalaries

