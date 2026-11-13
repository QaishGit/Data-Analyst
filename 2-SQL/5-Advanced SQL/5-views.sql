select * from Employees

-- creating a backup table
select * into emp_bkp 
from Employees

select * from emp_bkp

-- VIEW
--A View is a virtual table,it is a stored SQL Query
--It helps in reducing the complexity of the code
--It helps in implementing security

-- creating a view
create view view_1
as
select * from emp_bkp

select * from view_1

-- creating a view that contains all the columns except 'Salary'
create view view_2 as
select EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate
from emp_bkp;

select * from view_2

-- updating a view
update view_1
set EmployeeID = 100

select * from view_1

select * from emp_bkp

-- dropping a view
drop view view_2