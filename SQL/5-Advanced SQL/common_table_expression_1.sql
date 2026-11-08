-- Common Table Expression

select * from Employees

-- creating a temporary table
select * into #temp1
from Employees

select * from #temp1

-- Example 1:
WITH CTE_Name AS
(
	select * from #temp1
)

select * from CTE_Name

-- Example 2: 
with test_cte as
(
	select EmployeeID, FirstName 
	from #temp1
	where EmployeeID in (2, 4)
)
select * from test_cte

-- Example 3: Inserting values into a new table
with [Comm Table Expresion] as
(
	select * from #temp1
	where EmployeeID in (1, 2, 3)
)
select * into #temp2
from [Comm Table Expresion]

select * from #temp2

--Example 4: Updating a table
with CTE_1 as
(
	select * from #temp1
	where EmployeeID in (1, 2, 3)
)

update #temp1
set EmployeeID = 101
where EmployeeID in (select EmployeeID from CTE_1)

select * from #temp1

-- Example 5: Deleting from a table
with CTE_2 as
(
	select * from #temp1
	where EmployeeID = 4
)

delete from #temp1
where EmployeeID in (select EmployeeID from CTE_2)

select * from #temp1

-- Example 6:
with CTE_3 as
(
	select * from #temp1
	where EmployeeID = 101
)

insert into #temp1
select * from cte_3

select * from #temp1