-- Creating a database 'testDB'
create database testDB
use testdb

-- Creating a table 'Employees'
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);

-- Inserting values into the table 'Employees'
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES 
(1, 'John', 'Smith', 'john.smith@example.com', 101, '2021-06-15', 75000.00),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 102, '2020-03-10', 85000.00),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 101, '2019-11-22', 95000.00),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 103, '2022-01-05', 68000.00),
(5, 'William', 'Brown', 'william.brown@example.com', 102, '2018-07-19', 80000.00);

select * from Employees

-- STORED PROCEDURE
-- creating stored procedures around table 'Employees'
create procedure sp_test
as
begin
    select * from Employees
end

-- calling the above procedure
-- one way
sp_test

-- second way
exec sp_test

-- third way
execute sp_test

-- Example 2:
create proc sp_test_1
as
begin
    select FirstName, LastName from Employees
end;

execute sp_test_1

-- making changes in the above procedure
alter proc sp_test_1
as
begin
    select EmployeeID, FirstName, LastName from Employees
end;   

execute sp_test_1

-- STORED PROCEDURE
-- creating a stored procedure
create proc sp_get_info @min_sal int
as
begin
    select * from Employees
    where salary > @min_sal
end;

-- executing with diferent @min_sal values
-- 60000
exec sp_get_info @min_sal = 60000

-- 70000
exec sp_get_info @min_sal = 70000

-- 80000
exec sp_get_info @min_sal = 80000