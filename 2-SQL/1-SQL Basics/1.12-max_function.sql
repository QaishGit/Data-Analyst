select * from Sales

-- MAX Function
--getting maximum total amount
select max(TotalAmount) as [Maximum Amount] from Sales

-- getting date on which maximum sales took place
select max(SaleDate) from Sales

-- getting maximum payment method
select max(PaymentMethod) [Max Pay Method] from Sales

-- maximum quantity sold for each product id
select ProductID, max(Quantity) from Sales
group by ProductID

-- getting maximum total amount for all distinct dates in 'Saledate' column
select SaleDate, max(TotalAmount) as [maximum Total Amount] from Sales
group by SaleDate