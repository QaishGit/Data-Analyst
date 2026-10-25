select * from table1

select * from table2

-- LEFT ANTI JOIN
-- getting all columns using left join
select * from table1 left join table2
on table1.C1 = table2.C1

-- applying left anti join
select * from table1 left join table2
on table1.C1 = table2.C1
where table2.C3 is null

-- RIGHT ANTI JOIN
--getting all columns using right join
select * from table1 right join table2
on table1.C1 = table2.C1

-- applying right anti join
select * from table1 right join table2
on table1.C1 = table2.C1
where table1.C2 is null