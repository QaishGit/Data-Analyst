select * from Customers

select * from Orders

-- Getting information of only those customers who ordered in the month of 'August'
select * from Customers
where customer_id in (
	select distinct customer_id from Orders
	where order_date between '2024-08-01' and '2024-08-31'
)

-- Getting information of those customers who ordered in the months other than 'August'
select * from Customers
where customer_id in (
	select distinct customer_id from Orders
	where order_date not between '2024-08-01' and '2024-08-31'
)

select * from Employees

-- Fetch the data from employees table where salary is greater than average salary
select avg(salary) from Employees

select * from Employees
where Salary > (
	select avg(Salary) from Employees
	)