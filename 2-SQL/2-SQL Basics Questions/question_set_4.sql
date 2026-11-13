select * from Customers
select * from Orders
select * from Products

-- QUESTIONS

--1) Pairs of customers who live in the same city
select * from Customers x join Customers y
on x.Country = y.Country
where x.CustomerID <> y.CustomerID
and x.CustomerID < y.CustomerID


--2) Customers who have spent the most on there orders
select CustomerName from
(select CustomerName, SUM(Price) [Total Amount], DENSE_RANK() over(order by sum(Price) desc) [DR] 
from Customers c join Orders o
on c.CustomerID = o.CustomerID join Products p
on o.ProductID = p.ProductID
group by CustomerName) m
where DR = 1


--3) Customers who have ordered more than one type of products
select CustomerName
from Customers c inner join Orders o
on c.CustomerID = o.CustomerID 
group by CustomerName
having COUNT(ProductID) > 1


--4) List all the products and there corresponding orders, using a right join, including product that have never been ordered
select p.ProductID, ProductName, OrderID 
from Orders o right join Products p
on o.ProductID = p.ProductID


--5) Retrieve all orders placed by customers from USA
select OrderID
from Customers c inner join Orders o
on c.CustomerID = o.CustomerID
where Country = 'USA'


--6) names of customres who have ordered a product price above 500
select distinct CustomerName 
from Customers c inner join Orders o
on c.CustomerID = o.CustomerID
join Products p on o.ProductID = p.ProductID
where Price > 500


--7) Find the customers who have ordered the same product more than once
select CustomerName, ProductID, COUNT(OrderID)
from Customers c join Orders o
on c.CustomerID = o.CustomerID
group by CustomerName, ProductID
having Count(OrderID) > 1