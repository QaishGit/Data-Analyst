select * from EmployeeRecords

-- creating a backup table of EmployeeRecords
select * into emp_bkp
from EmployeeRecords

-- Approach 1: CTE with Row_Number()
with cte as
(
	select *, Row_number() over(partition by EmployeeID, EmployeeName, ManagerID order by EmployeeID) RN
	from EmployeeRecords
)
--select * from cte
delete from cte
where RN = 2

select * from EmployeeRecords

-- Approach 2: Temporary Table

-- creating a temporary table with unique records from emp_bkp
select distinct * into #temp1
from emp_bkp

select * from #temp1

-- removing all records from emp_bkp
truncate table emp_bkp

-- inserting unique records from #temp1 into emp_bkp
insert into emp_bkp
select * from #temp1

select * from emp_bkp