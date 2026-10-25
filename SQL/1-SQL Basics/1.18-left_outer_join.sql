select * from table1

select * from table2

-- getting all the columns
select * from table1 a left join table2 b
on a.C1 = b.C1

-- getting som specific columns
select a.C1, a.C2, b.C3 
from table1 a left outer join table2 b
on a.C1 = b.C1