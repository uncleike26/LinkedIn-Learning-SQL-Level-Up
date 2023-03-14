-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

INSERT INTO Orders (CustomerID, OrderDate)
SELECT CustomerID, '2022-09-20 14:00:00' AS OrderDate
FROM Customers
WHERE FirstName = 'Loretta'
AND LastName = 'Hundey'
AND Address = '6939 Elka Place';

INSERT INTO OrdersDishes (OrderID, DishID)
SELECT 1001 AS OrderID, DishID
FROM Dishes 
WHERE Name = 'House Salad'
OR Name = 'Mini Cheeseburgers'
OR Name = 'Tropical Blue Smoothie';

SELECT SUM(d.price)
FROM OrdersDishes AS o
INNER JOIN Dishes AS d
ON o.DishID = d.DishID
WHERE o.OrderID = 1001;