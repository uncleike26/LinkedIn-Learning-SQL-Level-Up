-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT Title, COUNT(Title)
FROM Books
WHERE Title = 'Dracula'
GROUP BY Title; 

SELECT b.Title, COUNT(b.Title)
FROM Books AS b
INNER JOIN Loans AS l
ON b.BookID = l.BookID
WHERE l.ReturnedDate IS NULL
AND b.Title = 'Dracula';

SELECT (SELECT COUNT(Title)
FROM Books
WHERE Title = 'Dracula'
GROUP BY Title) - (SELECT COUNT(b.Title)
FROM Books AS b
INNER JOIN Loans AS l
ON b.BookID = l.BookID
WHERE l.ReturnedDate IS NULL
AND b.Title = 'Dracula') AS Available_Copies;