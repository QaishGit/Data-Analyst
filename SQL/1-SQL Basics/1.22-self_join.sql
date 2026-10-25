select * from table1

-- SELF JOIN
-- all columns
select * from table1 a inner join table1 b
on a.C1 = b.C1

-- specific column
select a.C1, b.C2 from table1 a inner join table1 b
on a.C1 = b.C1

-- OR
select a.C1, b.C2 from table1 a join table1 b
on a.C1 = b.C1