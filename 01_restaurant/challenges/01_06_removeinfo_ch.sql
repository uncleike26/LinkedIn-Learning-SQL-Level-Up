-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT c.FirstName, c.LastName, r.ReservationID, r.Date
FROM Customers AS c
INNER JOIN Reservations AS r
ON c.CustomerID = r.CustomerID
WHERE c.FirstName = 'Norby';

DELETE FROM Reservations
WHERE ReservationID = 2000; 