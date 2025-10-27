-- Purpose: Identify products with complete inventory and pricing data 
-- and calculate the total value of this reliable inventory.
USE Northwind
GO

SELECT
    ProductID,
    ProductName,
    UnitsInStock,             
    UnitPrice,                
    -- Calculate a business metric: Inventory Value
    (UnitsInStock * UnitPrice) AS InventoryValue
FROM
    Products
WHERE
    UnitsInStock IS NOT NULL  -- We make sure we have registered stock
    AND UnitPrice IS NOT NULL -- We make sure we have a valid price
ORDER BY;
