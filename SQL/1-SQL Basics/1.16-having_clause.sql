select * from dbo.Sales

/* get total amount, total quantity, average amount, and average quantity for each distinct 
product ID where total amount is less than 700 and total quantity = 21 */
select 
ProductID, 
sum(TotalAmount) as [Total Amount],
sum(Quantity) as [Total Quantity],
avg(TotalAmount) [Average Amount],
avg(Quantity) [Average Quantity]
from dbo.Sales
group by ProductID
having sum(TotalAmount) < 700 and sum(Quantity) = 21