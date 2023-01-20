SELECT categories.CategoryID, categories.CategoryName, products.ProductName, ROUND((order_details.UnitPrice-(order_details.UnitPrice*order_details.Discount))*order_details.Quantity, 2) AS Productsales
FROM order_details
JOIN products ON products.ProductID = order_details.ProductID
JOIN categories ON categories.CategoryID = products.CategoryID
GROUP BY order_details.ProductID  