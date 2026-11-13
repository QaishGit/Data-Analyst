select * from Sales

-- minimum 'Quantity'
select min(Quantity) [Minimumm Quantity] from Sales

-- minimum 'Saledate' 
select min(SaleDate) from Sales

-- for every 'StoreID' give minimum 'TotalAmount'
select StoreID, min(TotalAmount) [Minimum Total Amount] from Sales
group by StoreID