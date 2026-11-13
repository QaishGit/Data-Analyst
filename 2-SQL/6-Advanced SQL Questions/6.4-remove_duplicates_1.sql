-- Create the table with EmployeeID and Email
CREATE TABLE EmployeeRecords_1 (
    EmployeeID INT,
    Email VARCHAR(100)
);

-- Insert data into the table, including duplicates
INSERT INTO EmployeeRecords_1 (EmployeeID, Email) VALUES
(1, 'alice@example.com'),
(2, 'bob@example.com'),
(3, 'carol@example.com'),
(4, 'david@example.com'),
(2, 'bob@example.com'),        -- Duplicate entry (same EmployeeID and Email)
(4, 'david@example.com'),      -- Duplicate entry (same EmployeeID and Email)
(5, 'shared@example.com'),     -- Valid case: Same email, different EmployeeID
(6, 'shared@example.com');     -- Valid case: Same email, different EmployeeID

select * from EmployeeRecords_1
order by EmployeeID, Email

------ Removing entire record duplicacy using temporary table
select distinct * into #1
from EmployeeRecords_1

select * from #1

-- Removing all records from table EmployeeRecords_1
truncate table EmployeeRecords_1

-- Now inserting records (free from entire record duplicacy) into table EmployeeRecords_1
insert into EmployeeRecords_1
select * from #1

select * from EmployeeRecords_1
order by Email

------ Removing Column duplicate values
-- Records with lower EmployeeID(5) remains
with cte as
(
    select *, DENSE_RANK() over(partition by email order by employeeid) DR
    from EmployeeRecords_1
)
delete from cte
where DR = 2

select * from EmployeeRecords_1
order by Email

--------
select * into EmployeeRecords_2
from #1

select * from EmployeeRecords_2
order by Email
--------

-- Records with higher EmployeeID(6) remains
with cte as
(
    select *, DENSE_RANK() over(partition by email order by employeeid desc) DR
    from EmployeeRecords_2
)
-- select * from cte
delete from cte
where DR = 2

select * from EmployeeRecords_1
select * from EmployeeRecords_2