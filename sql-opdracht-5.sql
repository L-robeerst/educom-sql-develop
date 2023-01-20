SELECT ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice
FROM products
WHERE discontinued = 0
ORDER BY ProductName;