-- Porpuse: Calculate basic KPIs for the business
USE Northwind
GO

SELECT
    -- 1. Total Revenue (Calculated with discounts): 
    SUM(OD.UnitPrice * OD.Quantity * (1 - OD.Discount)) AS TotalRevenue,

    -- 2. Average products per order (Casting for precise decimal calculation): 
    CAST(AVG(CAST(OD.Quantity AS DECIMAL(10, 2))) AS DECIMAL(10, 2)) AS AvgProductsPerOrder,

    -- 3. Total Units Sold (Volume metric):
    SUM(OD.Quantity) AS TotalUnitsSold,
    
    -- 4. Total Orders Count (Activity metric):
    COUNT(DISTINCT O.OrderID) AS TotalOrdersCount,

    -- 5. Total Active Customers (Customer base size):
    COUNT(DISTINCT O.CustomerID) AS TotalActiveCustomers
FROM
    [Order Details] AS OD
INNER JOIN
    Orders AS O ON OD.OrderID = O.OrderID;