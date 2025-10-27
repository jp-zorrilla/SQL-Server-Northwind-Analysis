-- Query to retrieve potential churned customers from the Northwind database
USE Northwind
GO

SELECT CustomerID, CompanyName, ContactName
FROM Customers
WHERE CustomerID NOT IN (
    SELECT DISTINCT CustomerID
    FROM Orders
    WHERE OrderDate >= DATEADD(MONTH, -6, GETDATE())
)
AND CustomerID IS NOT NULL
AND CompanyName IS NOT NULL
AND ContactName IS NOT NULL
