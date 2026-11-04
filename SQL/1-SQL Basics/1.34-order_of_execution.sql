-- Creatye table EmployeeSalaries
CREATE TABLE EmployeeSalaries (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Salary INT,
    Department VARCHAR(50)
);

INSERT INTO EmployeeSalaries (EmployeeID, EmployeeName, Salary, Department)
VALUES
(1, 'Alice', 50000, 'HR'),
(2, 'Bob', 60000, 'HR'),
(3, 'Charlie', 55000, 'HR'),
(4, 'David', 75000, 'Finance'),
(5, 'Eve', 80000, 'Finance'),
(6, 'Frank', 72000, 'Finance'),
(7, 'Grace', 90000, 'IT'),
(8, 'Heidi', 95000, 'IT'),
(9, 'Ivan', 87000, 'IT');

select * from EmployeeSalaries

-- Correct Code
select distinct top 1 Department, AVG(Salary) as [Average Salary] from EmployeeSalaries
where Salary > 50000
group by Department
having AVG(Salary) > 55000
order by Department

-- Incorrect Code
select distinct top 1 Department, AVG(Salary) as [Average Salary] from EmployeeSalaries
where Salary > 50000
group by Department
having [Average Salary] > 55000
order by Department

-- Order of Execution
-- First: FROM & JOIN
-- Second: WHERE
-- Third: GROUP BY
-- Fourth: HAVING
-- Fifth: SELECT
-- Sixth: DISTINCT
-- Seventh: ORDER BY
-- Eight: TOP