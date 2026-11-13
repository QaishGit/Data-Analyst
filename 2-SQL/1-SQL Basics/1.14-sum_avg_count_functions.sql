select * from dbo.Sales

-- SUM
-- sum of quantity
select sum(Quantity) [Total Quantity] from dbo.Sales

-- sum of quantity and total amount
select sum(Quantity) [Total Quantity], sum(TotalAmount) [Total Amount Sum] from dbo.Sales

-- AVG
-- avg of quantity
select avg(Quantity) [Average Quantity] from dbo.Sales

-- sum of quantity, sum of total amount, avg of quantity and avg of total amount for every product
select 
ProductID,
sum(Quantity) [Total Quantity],
sum(TotalAmount) [Total Amount Sum],
avg(Quantity) as [Average Quantity],
avg(TotalAmount) as [Average Total Amount]
from dbo.Sales
group by ProductID

/* sum of quantity, sum of total amount, avg of quantity and avg of total amount 
for every productID and StoreID combination */
select 
StoreID,
ProductID,
sum(Quantity) [Total Quantity],
sum(TotalAmount) [Total Amount Sum],
avg(Quantity) as [Average Quantity],
avg(TotalAmount) as [Average Total Amount]
from dbo.Sales
group by ProductID, StoreID

-- COUNT
-- count all records
select count(*) [Total Records] from dbo.Sales

-- count payment methods
select count(PaymentMethod) from dbo.Sales

-- select distinc productIDs
select count(distinct ProductID) [Unique ProductIDs count] from dbo.Sales

-- count each payment method
select PaymentMethod, count(PaymentMethod) [count] from dbo.Sales
group by PaymentMethod

-- count distinct payment methods
select PaymentMethod, count(distinct PaymentMethod) from dbo.Sales
group by PaymentMethod

select PaymentMethod, count(*) from dbo.Sales
group by PaymentMethod