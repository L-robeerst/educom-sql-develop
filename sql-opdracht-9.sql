SELECT City, CompanyName, ContactName, 'Customers' AS relationship FROM Customers
UNION
SELECT City, CompanyName, ContactName, 'Suppliers' AS relationship FROM Suppliers
ORDER BY City;