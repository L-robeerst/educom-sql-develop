SELECT orderID, ROUND(SUM((UnitPrice-(UnitPrice*Discount))*Quantity), 2) AS subtotal
FROM order_details
GROUP BY OrderID;