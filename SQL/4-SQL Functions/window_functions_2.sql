select * from Students

--ROW_NUMBER Function
-- rank based on marks for each subject
select *, ROW_NUMBER() over(partition by subject order by marks desc) [Row Number]
from Students

-- rank based on marks for each student
select *, ROW_NUMBER() over(partition by student_name order by marks desc) [Row Number]
from Students

--RANK Function
-- rank based on marks for each subject
select *, RANK() over(partition by subject order by marks desc) [Rank]
from Students

-- rank based on marks for each student
select *, RANK() over(partition by student_name order by marks desc) [Rank]
from Students

--DENSE_RANK Function
-- rank based on marks for each subject
select *, DENSE_RANK() over(partition by subject order by marks desc) [Dense Rank]
from Students

-- rank based on marks for each student
select *, DENSE_RANK() over(partition by student_name order by marks desc) [Dense Rank]
from Students