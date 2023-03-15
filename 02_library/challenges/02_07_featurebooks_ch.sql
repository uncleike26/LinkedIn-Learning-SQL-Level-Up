-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

SELECT Title, Barcode 
FROM Books
WHERE BookID NOT IN
(SELECT BookID FROM Loans
WHERE ReturnedDate IS NULL)
AND Published BETWEEN 1890 AND 1899
ORDER BY Title; 