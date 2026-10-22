select * from dbo.Sales

-- total amount for each payment method
select PaymentMethod, sum(TotalAmount) [Total Amount]
from dbo.Sales
group by PaymentMethod

-- total amount for product ID and payment method combination
select ProductID, PaymentMethod, sum(TotalAmount) from dbo.Sales
group by ProductID, PaymentMethod
order by ProductID