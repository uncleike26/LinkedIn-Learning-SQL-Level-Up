-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT l.DueDate, b.Title, p.FirstName, p.Email
FROM Loans AS l 
INNER JOIN Books AS b
ON l.BookId = b.BookID
INNER JOIN Patrons AS p
ON l.PatronID = p.PatronID
WHERE l.DueDate = '2022-07-13'
AND l.ReturnedDate IS NULL; 