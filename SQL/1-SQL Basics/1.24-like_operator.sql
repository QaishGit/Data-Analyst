-- Create Employees_us table
CREATE TABLE Employees_US (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50)
);

-- Insert sample data into Employees table
INSERT INTO Employees_us (EmployeeID, FirstName, LastName, Department) VALUES
(1, 'Alice', 'Smith', 'Finance'),
(2, 'Bob', 'Johnson', 'Engineering'),
(3, 'Charlie', 'Williams', 'Marketing'),
(4, 'Diana', 'Brown', 'Finance'),
(5, 'Edward', 'Jones', 'Engineering'),
(6, 'Fiona', 'Garcia', 'Marketing'),
(7, 'George', 'Miller', 'Finance'),
(8, 'Hannah', 'Wilson', 'Engineering');

-- last name starts with 's'
select * from Employees_US
where LastName like 's%'

-- first name ends with 'a'
select * from Employees_US
where FirstName like '%a'

-- Employees department contains 'eng'
select * from Employees_US
where Department like '%eng%'

-- Employees whose last name is exactly 5 characters long
select * from Employees_US
where LastName like '_____'

-- whose first name starts with 'C' or 'D'
select * from Employees_US
where FirstName like '[CD]%'

-- whose last name contains 'son'
select * from Employees_US
where LastName like '%son%'

-- whose first name contains letter 'i' as the second character
select * from Employees_US
where FirstName like '_i%'

-- whose last name starts with any letter between 'A' and 'L'
select * from Employees_US
where LastName like '[A-L]%'

-- whose first name does not contains 'o'
select * from Employees_US
where FirstName not like '%o%'

-- whose last name ends with 'a'and is 5 characters long
select * from Employees_US
where LastName like '____a'

-- whose 'Department' starts with 'mar' and ends with 'ing'
select * from Employees_US
where Department like 'mar%ing'

-- whsoe first name has an 'a' in third position
select * from Employees_US
where FirstName like '__a%'

-- whose last name starts with 'Br' or 'Bl'
select * from Employees_US
where LastName like 'br%' or LastName like 'bl%'

-- whose first name starts with a vowel 
select * from Employees_US
where FirstName like '[aeiou]%'

-- whose first name does not start with a consonent
select * from Employees_US
where FirstName not like '[^aeiou]%'

-- whose first name starts with coconents
select * from Employees_US
where FirstName like '[^aeiou]%'