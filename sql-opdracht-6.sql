SELECT order_details.OrderID, order_details.ProductID, products.ProductName, order_details.UnitPrice, order_details.Quantity, order_details.Discount, ROUND((order_details.UnitPrice-(order_details.UnitPrice*order_details.Discount))*order_details.Quantity, 2) AS ExtendedPrice
FROM order_details
JOIN products ON products.ProductID = order_details.ProductID;