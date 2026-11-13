-- LAST_VALUE() Window Function

-- Employee's name with lowest salary
----------------- Incorrect Code-----------------
select *,
LAST_VALUE(EmployeeName) over(order by Salary desc) [Employee with Lowest Salary]
from EmployeeSalaries

----------------- Correct Code-----------------
select *,
LAST_VALUE(EmployeeName) over(order by Salary desc rows between unbounded preceding and unbounded following) [Employee with Lowest Salary]
from EmployeeSalaries

-- Employee's Name along with lowest salary
select *,
LAST_VALUE(EmployeeName) over(order by Salary desc rows between unbounded preceding and unbounded following) [Employee with Lowest Salary],
LAST_VALUE(Salary) over(order by Salary desc rows between unbounded preceding and unbounded following) [Lowest Salary]
from EmployeeSalaries

-- Employee's Name along with lowest salary department wise
select *,
LAST_VALUE(EmployeeName) over(partition by department order by Salary desc rows between unbounded preceding and unbounded following) [Employee with Lowest Salary],
LAST_VALUE(Salary) over(partition by department order by Salary desc rows between unbounded preceding and unbounded following) [Lowest Salary]
from EmployeeSalaries

-- Employee's Name along with highest salary department wise
select *,
LAST_VALUE(EmployeeName) over(partition by department order by Salary rows between unbounded preceding and unbounded following) [Employee with Highiest Salary],
LAST_VALUE(Salary) over(partition by department order by Salary rows between unbounded preceding and unbounded following) [Highiest Salary]
from EmployeeSalaries