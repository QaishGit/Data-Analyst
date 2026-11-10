-- Creating database 'Advanced SQL Questions'
create database [Advanced SQL Questions]
use [Advanced SQL Questions]

-- Create table 'Employees'
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName NVARCHAR(100),
    Salary DECIMAL(10, 2)
);

-- inserting values in the table
INSERT INTO Employees (EmployeeID, EmployeeName, Salary)
VALUES
(1, 'Alice Smith', 70000.00),
(2, 'Bob Johnson', 85000.00),
(3, 'Carol White', 95000.00),
(4, 'David Brown', 60000.00),
(5, 'Eve Davis', 75000.00),
(6, 'Frank Miller', 90000.00),
(7, 'Grace Lee', 80000.00),
(8, 'Hannah Clark', 62000.00),
(9, 'Ivy Harris', 74000.00),
(10, 'Jack Lewis', 98000.00);

select * from Employees

-- Nth HIGHEST SALARY

-- Approach 1: Sub-Queries
-- 2nd Highest Salary

select max(Salary) [2nd Highest Salary]
from Employees
where salary < (select MAX(Salary) from Employees)
--OR
select max(Salary) [2nd Highest Salary]
from Employees
where salary not in (select MAX(Salary) from Employees)

-- 3rd Highest Salary
select max(Salary) [3rd Highest Salary]
from Employees
where salary < (select max(Salary) from Employees
where salary < (select MAX(Salary) from Employees))

-- Approach 2: CTE along with Dense_Rank()
-- 2nd Highest Salary
with cte_sal as
(
    select *, DENSE_RANK() over(order by Salary desc) DR 
    from Employees
)
select Salary from cte_sal
where DR = 2

-- 3rd Highest Salary
with cte_sal as
(
    select *, DENSE_RANK() over(order by Salary desc) DR 
    from Employees
)
select Salary from cte_sal
where DR = 3

-- Approach 3: Sub-Queries along with Dense_Rank()
-- 2nd Highest Salary
select Salary [2nd Highest Salary] from
(select *, DENSE_RANK() over(order by SAlary desc) DR from Employees) x
where DR = 2

-- 3rd Highest Salary
select Salary [2nd Highest Salary] from
(select *, DENSE_RANK() over(order by SAlary desc) DR from Employees) x
where DR = 3

-- Approach 4: Subb-Queries
-- 2nd Highest Salary
select top 1 Salary [2nd Highest Salry] from
(select distinct top 2 Salary from Employees
order by Salary desc) x
order by Salary

-- 3rd Highest Salary
select top 1 Salary [3rd Highest Salry] from
(select distinct top 3 Salary from Employees
order by Salary desc) x
order by Salary