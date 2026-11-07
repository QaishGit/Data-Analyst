select * from ProfitData

-- Add a column that shows previous month's profit for each Product
select *, LAG(Profit) over(partition by Product order by monthnumber) [Previous Month's Profit] 
from ProfitData

-- we don't want 'Product' column in the output instead we want total profit of each month by monthnumber
-- monthname and also we want to add a new column in the table that shows the total profit of previous month
select MonthNumber, MonthName, SUM(Profit) [Total Profit],
LAG(SUM(Profit)) over(order by monthnumber) [Previous Month's Total Profit]
from ProfitData
group by MonthNumber, MonthName
order by MonthNumber