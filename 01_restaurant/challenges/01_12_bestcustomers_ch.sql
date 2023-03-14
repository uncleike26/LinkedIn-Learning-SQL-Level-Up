-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT c.FirstName, c.LastName, c.Email, COUNT(o.OrderID) AS num_orders
FROM Customers AS c
INNER JOIN Orders AS o
ON c.CustomerID = o.CustomerID
GROUP BY o.CustomerID
ORDER BY COUNT(o.OrderID) DESC
LIMIT 6;