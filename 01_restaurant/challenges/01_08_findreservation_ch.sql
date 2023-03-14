-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT r.ReservationID, c.FirstName, c.LastName, r.Date, r.PartySize 
FROM Customers AS c
INNER JOIN Reservations AS r
ON c.CustomerID = r.CustomerID
WHERE LastName LIKE 'St%n%'
AND Date LIKE '%-06-14%'
AND PartySize = 4;