# SQL LAB 1
Create a table "BooksAuthors" containing two fields (AuthorId, BookId)
```SQL
CREATE TABLE BooksAuthors(
  AuthorId serial, BookId serial,
  FOREIGN KEY(AuthorId) REFERENCES Authors(ID),
  FOREIGN KEY(BookId) REFERENCES Books(Id));
```

Insert at least 5 records into the BooksAuthors table.
```SQL
INSERT INTO BooksAuthors VALUES(1, 5), (2, 4), (3, 3), (4, 2), (5, 1), (6, 7), (7,8), (8, 6);
```

Write a statement that will select the Country column from the Authors table.
```SQL
SELECT country from Authors;
```

Select all the different values from the Country column in the Authors table.
```SQl
SELECT distinct country from Authors;
```

Write an SQL query to return only Authors whose name begins with S.
```SQL
SELECT name from Authors where name like "S%"
```

List the number of Authors in each country.
```SQL
SELECT  country, count(name) from Authors group by country;
```

Select all records from the Authors table, and sort the result alphabetically by the column's name.
```SQL
 SELECT * FROM Authors ORDER BY name ASC;
```

Select all records from the Authors table, and sort the result reversed alphabetically by the column name.
```SQL
 SELECT * FROM Authors ORDER BY name DESC;
```

Select all records where the Title column has the value ‘Great ' from the Books table.
```SQL
SELECT * FROM books WHERE title LIKE "%Great%";
```

Use the NOT keyword to select all records where the country is NOT "USA".
```SQl
SELECT * FROM Authors WHERE country IS NOT "USA"
```

Select all records where the country column has the value 'USA' or ‘India' from the “Authors” table
```SQL
SELECT * FROM Authors WHERE country = "USA" OR country = "India";
```

Select all records where the age column has the value BETWEEN 50 - 60 in the “Authors” table.
```SQL
SELECT * FROM Authors WHERE age BETWEEN 50 AND 60;
```

Use the MIN function to select the record with the smallest value of the Age column from the “Authors” table.
```SQL
SELECT min(age) from Authors;
```

Choose the correct JOIN clause to view all books and their authors.
```SQL
SELECT name, title
from Authors
INNER JOIN (  
  SELECT Authorid,id, title 
  from Books inner JOIN BooksAuthors
  where Books.id = BooksAuthors.bookid
) AS ex
on Authors.ID = ex.AuthorID;
```
<img src="pic.png">
