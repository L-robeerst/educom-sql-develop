SELECT employees.Country, employees.LastName, employees.FirstName, orders.ShippedDate, order_details.orderID, ROUND(SUM((order_details.UnitPrice-(order_details.UnitPrice*order_details.Discount))*order_details.Quantity), 2) AS Sale_Ammount
FROM order_details
JOIN orders ON orders.OrderID = order_details.OrderID
JOIN employees ON employees.EmployeeID = orders.EmployeeID
GROUP BY order_details.OrderID;