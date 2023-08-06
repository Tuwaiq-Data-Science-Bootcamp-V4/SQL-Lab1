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

Select all the different values from the Country column in the Authors table.
```SQL
 SELECT * FROM Authors ORDER BY name ASC;
```

Write an SQL query to return only Authors whose name begins with S.
```SQL
 SELECT * FROM Authors ORDER BY name DESC;
```
