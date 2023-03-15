-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

INSERT INTO Loans(BookID, PatronID, LoanDate, DueDate)
SELECT b.BookID, p.PatronID, '2022-08-25' AS LoanDate, '2022-09-08' AS DueDate
FROM (SELECT BookID FROM Books 
WHERE Barcode IN (2855934983,4043822646)) AS b,
(SELECT PatronID FROM Patrons
WHERE Email = 'jvaan@wisdompets.com') AS p;

SELECT l.*, p.FirstName, p.LastName, b.Title
FROM Loans AS l 
INNER JOIN Patrons AS p 
ON p.PatronID = l.PatronID
INNER JOIN Books AS b
ON l.BookID = b.BookID
ORDER BY LoanID DESC 
LIMIT 2; 