SELECT ProductName AS top_ten_most_expensive_products, UnitPrice  
from products
ORDER BY UnitPrice DESC
LIMIT 10;