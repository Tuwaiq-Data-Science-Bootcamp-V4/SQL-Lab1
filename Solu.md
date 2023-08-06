### Input 
CREATE TABLE BooksAuthors (
    AuthorId INT,
    BookId INT
);
INSERT INTO BooksAuthors VALUES (1, 101);
INSERT INTO BooksAuthors VALUES (2, 102);
INSERT INTO BooksAuthors VALUES (3, 103);
INSERT INTO BooksAuthors VALUES (4, 104);
INSERT INTO BooksAuthors VALUES (5, 105);
SELECT Country FROM Authors;
SELECT DISTINCT Country FROM Authors;
SELECT * FROM Authors WHERE Name LIKE 'S%';
SELECT Country, COUNT(*) AS NumberOfAuthors
FROM Authors
GROUP BY Country;
SELECT * FROM Authors ORDER BY Name;
SELECT * FROM Authors ORDER BY Name DESC;
SELECT * FROM Books WHERE Title = 'Great Book';
SELECT * FROM Authors WHERE NOT Country = 'USA';
SELECT * FROM Authors WHERE Country IN ('USA', 'India');
SELECT * FROM Authors WHERE Age BETWEEN 50 AND 60;
SELECT * FROM Authors WHERE Age = (SELECT MIN(Age) FROM Authors);
SELECT Authors.name, Books.title, BooksAuthors.BookId, BooksAuthors.AuthorId
FROM BooksAuthors
INNER JOIN Books ON Books.id = BooksAuthors.BookId 
INNER JOIN Authors ON Authors.id = BooksAuthors.AuthorId;

# Output
| Country    |
|---------|
| USA    |
| USA   |
| UK   |
| USA    |
| USA   |
| India   |
| USA    |
| USA   |


| Country    |
|---------|
| USA    |
| UK   |
| India   |

| ID   | Name | Country | Age |
|--------|-----|--------|------------|
| 4   | Scott Hanselman  | USA   | 65   |

| Country      | NumberOfAuthors |
|-----------|-----|
| India     | 1  |
| UK        | 1  |
| USA       | 6  |
