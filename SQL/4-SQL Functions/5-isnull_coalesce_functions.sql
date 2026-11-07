-- Creating table 'Customers'
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255)
);

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, PhoneNumber, Address)
VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', '555-1234', '123 Elm St'),
(2, 'Bob', 'Smith', NULL, '555-5678', NULL),
(3, 'Charlie', 'Williams', 'charlie.williams@example.com', NULL, '456 Oak St'),
(4, 'Diana', 'Brown', NULL, NULL, '789 Pine St'),
(5, 'Eve', 'Davis', 'eve.davis@example.com', '555-8765', NULL);

select * from Customers

-- ISNULL

select ISNULL(null, 'Not Null Value') ---- returns 'Not Null Value'
select ISNULL('cash', 'Not Null Value') -- returns 'cash'
select ISNULL(null, null) -- returns ' NULL'

-- COALESCE

select coalesce('A', 'B', 'C') -- returns 'A'
select coalesce(null, 'B', 'C') -- returns 'B'
select coalesce(null, null, 'C') -- returns 'C'

-- Applying ISNULL on the table
select CustomerID, ISNULL(email, 'Not available') [email],
ISNULL(PhoneNumber, 'Not available') [PhoneNumber]
from Customers

-- Applying COALESCE on the table
select CustomerID, COALESCE(Email, PhoneNumber, 'Contact NA') [Contact Details]
from Customers