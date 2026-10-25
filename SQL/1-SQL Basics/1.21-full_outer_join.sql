select * from table1

select * from table2

-- getting all columns using inner join
select * from table1 a inner join table2 b
on a.C1 = b.C1

-- getting left anti join
select * from table1 left join table2
on table1.C1 = table2.C1
where table2.C3 is null

-- getting right anti join
select * from table1 right join table2
on table1.C1 = table2.C1
where table1.C2 is null

-- Full outer join = Inner join + Left anti join + Right anti join
select * from table1 full outer join table2
on table1.C1 = table2.C1

-- getting specific records using full outer join
select a.C1, a.C2, b.C3 from table1 a full outer join table2 b
on  a.C1 = b.C1