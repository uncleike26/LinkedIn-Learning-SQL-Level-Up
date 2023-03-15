-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT p.FirstName, p.Email, COUNT(l.LoanID) AS NumLoans
FROM Patrons AS p
INNER JOIN Loans AS l
ON p.PatronID = l.PatronID 
GROUP BY p.PatronID
ORDER BY COUNT(l.LoanID) ASC
LIMIT 9;