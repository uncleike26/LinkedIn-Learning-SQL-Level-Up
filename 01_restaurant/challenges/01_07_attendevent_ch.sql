-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

INSERT INTO AnniversaryAttendees(CustomerID, PartySize)
SELECT CustomerId, 3 AS PartySize
FROM Customers
WHERE Email = 'atapley2j@kinetecoinc.com';

SELECT * FROM AnniversaryAttendees;