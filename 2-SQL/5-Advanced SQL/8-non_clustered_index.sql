-- NON CLUSTERED INDEX

select * from Students

-- creating a nonclustered index
create nonclustered index ix_1
on Students(id)

-- creating another nonclustered index
create nonclustered index ix_2
on Students(gender desc, age)

drop index ix_2 on Students