# SQL-Lab1
- Create a table "BooksAuthors" containing two fields (AuthorId, BookId)
```SQL
CREATE TABLE BooksAuthors (AuthorId, BookId)

```
- Insert at least 5 records into the BooksAuthors table.
```SQL
INSERT into BooksAuthors (authorid,bookid)
VALUES (1,1),
(2,2),
(3,3),
(4,4),
(5,5)

```
- Write a statement that will select the Country column from the Authors table.
```SQL
SELECT country from Authors
```
- Select all the different values from the Country column in the Authors table.
```SQL
SELECT DISTINCT country from Authors
```
- Write an SQL query to return only Authors whose name begins with S.
```SQL
SELECT name FROM Authors
WHERE name LIKE 'S%'
```
- List the number of Authors in each country.
```SQL
SELECT country ,COUNT(*) As NumberOfAuthors from Authors
GROUP by country
```
- Select all records from the Authors table, and sort the result alphabetically by the column's name.
```SQL
SELECT * from Authors 
order by name ASC
```
- Select all records from the Authors table, and sort the result reversed alphabetically by the column name.
```SQL
SELECT * from Authors 
order by name DESC
```
- Select all records where the Title column has the value ‘Great ' from the Books table.
```SQL
SELECT * FROM Books
WHERE title LIKE '%Great %'
```
- Use the NOT keyword to select all records where the country is NOT "USA".
```SQL
SELECT *  FROM Authors
WHERE NOT country='USA'
```
- Select all records where the country column has the value 'USA' or ‘India' from the “Authors” table
```SQL
SELECT * FROM Authors
WHERE country='USA' OR country='India'
```
- Select all records where the age column has the value BETWEEN 50 - 60 in the “Authors” table.
```SQL
SELECT * FROM Authors
WHERE age BETWEEN 50 and 60
```
- Use the MIN function to select the record with the smallest value of the Age column from the “Authors” table.
```SQL
SELECT *,MIN(age) FROM Authors
```
- Choose the correct `JOIN` clause to view all books and their authors.
```SQL
SELECT Authors.*,Books.*
from BooksAuthors
JOIN Authors
on BooksAuthors.authorid = Authors.ID
join Books
on BooksAuthors.BookId = Books.Id

```
