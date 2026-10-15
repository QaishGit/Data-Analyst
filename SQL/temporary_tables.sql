-- creating a temporary table
SELECT * INTO #temp1
FROM [dbo].[EmployeeRecords]

SELECT * FROM #temp1

SELECT * FROM Employees

SELECT * INTO ##temp2
FROM [dbo].[Employees]