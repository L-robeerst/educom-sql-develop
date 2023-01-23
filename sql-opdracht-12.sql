SELECT categories.CategoryName AS Product_Category, suppliers.Country AS Supplier_Country, products.UnitsInStock 
FROM products
JOIN categories ON products.CategoryID = categories.CategoryID
JOIN suppliers ON products.SupplierID = suppliers.SupplierID
GROUP BY Categories.CategoryID, suppliers.Country;
