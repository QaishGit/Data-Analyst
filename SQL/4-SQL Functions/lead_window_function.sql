create database [Profit DB]
use [Profit DB]

-- Create a table to store monthly profit data for different products
CREATE TABLE ProfitData (
    MonthNumber INT,
    MonthName VARCHAR(3),
    Product VARCHAR(50),
    Profit INT
);

-- Insert data into the ProfitData table
INSERT INTO ProfitData (MonthNumber, MonthName, Product, Profit) VALUES
(1, 'Jan', 'Product A', 1000),
(2, 'Feb', 'Product A', 1500),
(3, 'Mar', 'Product A', 1200),
(4, 'Apr', 'Product A', 1700),
(5, 'May', 'Product A', 1300),
(6, 'Jun', 'Product A', 1600),
(1, 'Jan', 'Product B', 2000),
(2, 'Feb', 'Product B', 2500),
(3, 'Mar', 'Product B', 2200),
(4, 'Apr', 'Product B', 2700),
(5, 'May', 'Product B', 2300),
(6, 'Jun', 'Product B', 2600);

select * from ProfitData

-- Adding a new column in the table that shows the profit of the next month
select *, LEAD(Profit) over(partition by Product order by MonthNumber) [Next Month's Profit]
from ProfitData

-- we don't want 'Product' column in the output instead we want total profit of each month by monthnumber
-- monthname and also we want to add anew column the table that shows the total profit of next month
select MonthNumber, MonthName, SUM(Profit) [Total Profit],
LEAD(SUM(Profit)) over(order by MonthNumber) [Next Month's Total Profit]
from ProfitData
group by MonthNumber, MonthName
order by MonthNumber