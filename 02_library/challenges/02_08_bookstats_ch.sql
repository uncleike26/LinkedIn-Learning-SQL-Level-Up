-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

SELECT Published, COUNT (DISTINCT Title) AS TotalTitles
FROM Books
GROUP BY Published
ORDER BY COUNT(DISTINCT Title) DESC;

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT b.Title, COUNT(LoanID) AS TotalCheckouts
FROM Books AS b
INNER JOIN Loans AS l
ON b.BookID = l.BookID
GROUP BY Title
ORDER BY COUNT(LoanID) DESC
LIMIT 5;