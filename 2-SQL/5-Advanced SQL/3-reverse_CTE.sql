-- Recursive Common Table Expression

-- Example 1: Generate numbers 1 to 5
with Number_CTE as
(
	-- Anchor Query
	select 1 as num

	union all

	-- Recursive Query
	select num+1 
	from Number_CTE
	where num < 5
)

select * from Number_CTE

-- Example 2: Factorial of number
with Fact_CTE as
(
	-- Anchor Query
	select 1 as num

	union all

	-- Recursive Query
	select num+1 
	from Fact_CTE
	where num < 5
)

select EXP(SUM(LOG(num))) [Factorial] 
from Fact_cte