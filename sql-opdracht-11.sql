SELECT *
FROM orders
JOIN order_details ON orders.OrderID = order_details.OrderID
JOIN customers ON orders.CustomerID = customers.CustomerID
JOIN products ON products.ProductID = order_details.ProductID
JOIN categories ON categories.CategoryID = products.CategoryID
JOIN shippers ON shippers.ShipperID = orders.ShipVia;