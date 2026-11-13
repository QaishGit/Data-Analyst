select * from Employees

select * into #1
from dbo.Employees

select * from #1

-- Example 1:
with CTE_1 as
(
	select * from #1
	where EmployeeID in (1, 2)
),
CTE_2 as
(
	select * from #1
	where EmployeeID in (3, 4)
)

select * from cte_1
union all
select * from cte_2

-- Example 2: Inserting values into a new table
with CTE_3 as
(
	select EmployeeID, FirstName from #1
	where EmployeeID = 1
),
CTE_4 as
(
	select EmployeeID, FirstName from #1
	where EmployeeID = 3
)

select * into #2
from(select * from cte_3 union all select * from cte_4) x

select * from #2

-- Example 3: 
with CTE_3 as
(
	select EmployeeID, FirstName from #1
	where EmployeeID = 1
),
CTE_4 as
(
	select EmployeeID, FirstName from #1
	where EmployeeID = 3
)

insert into #2 
select * from(
	select * from cte_3
	union all
	select * from cte_4
) x

select * from #2

-- Example 4:deletion
with CTE_3 as
(
	select EmployeeID, FirstName, Salary from #1
	where EmployeeID = 2
),
CTE_4 as
(
	select EmployeeID, FirstName, Salary from #1
	where EmployeeID = 4
)

delete from #1
where EmployeeID in (
	select EmployeeID from cte_3
	union all 
	select EmployeeID from cte_4
)

select * from #1

-- Example 5: Updation
with CTE_3 as
(
	select EmployeeID, FirstName, Salary from #1
	where EmployeeID = 9
),
CTE_4 as
(
	select EmployeeID, FirstName, Salary from #1
	where EmployeeID = 10
)

update #1
set EmployeeID = 100
where EmployeeID in (
	select EmployeeID from cte_3
	union all 
	select EmployeeID from cte_4
)

select * from #1

