

CREATE TABLE EmployeeRecords (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Department NVARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO EmployeeRecords (EmployeeID, FirstName, LastName, Department, Salary)
VALUES
(1, 'John', 'Miller', 'HR', 60000),
(2, 'Jane', 'Smith', 'Finance', 75000),
(3, 'John', 'Miller', 'HR', 60000),
(4, 'Emily', 'Davis', 'IT', 85000),
(5, 'Michael', 'Brown', 'Finance', 75000),
(6, 'Jane', 'Smith', 'Finance', 75000);

select * from EmployeeRecords

-- Giving Alias
select EmployeeID, concat(FirstName, ' ', LastName) [Full Name] from EmployeeRecords

select EmployeeID, concat(FirstName, ' ', LastName) as [Full Name] from EmployeeRecords

-- selecting distinct names
select distinct FirstName from EmployeeRecords

-- selecting distinct full names
select distinct CONCAT(FirstName, ' ', LastName) as [Full Name] from EmployeeRecords

-- selecting distinct entire records
SELECT DISTINCT * FROM EmployeeRecords