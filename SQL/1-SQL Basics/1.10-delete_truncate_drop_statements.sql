select * from Employees

select * into #3
from Employees

select * from #3

-- DELETE STATEMENT
-- deleting records where either 'Department' = 0 or 'LastName' is blank
delete from #3
where LastName = ' ' or Department = '0'

-- TRUNCATE STATEMENT
truncate table #3

-- DELETE STATEMENT
drop table #3