# Q\ Create a table "BooksAuthors" containing two fields (AuthorId, BookId)

```SQL
CREATE TABLE BooksAuthors(
AuthorId SERIAL(11),
BookId SERIAL(11)
);
```

![image-2.png](attachment:image-2.png)

# Q\ Insert at least 5 records into the BooksAuthors table.

```SQL
INSERT INTO BooksAuthors (authorid,bookid)
VALUES (1,1),(2,2),(3,3),(4,4),(5,5)
```
![image.png](attachment:image.png)

# Q\ Write a statement that will select the Country column from the Authors table. 

```SQL
SELECT country
FROM Authors
```
![image.png](attachment:image.png)

# Q\ Select all the different values from the Country column in the Authors table.

```SQL
SELECT DISTINCT country 
FROM Authors
```
![image.png](attachment:image.png)

# Q\Write an SQL query to return only Authors whose name begins with S.

```SQL
SELECT name 
FROM Authors 
WHERE name LIKE"s%";
```
![image.png](attachment:image.png)

# Q\ List the number of Authors in each country.

```SQL

SELECT  COUNT(`name`) as count_name , country
FROM Authors
GROUP by country
```
![image.png](attachment:image.png)

# Q\ Select all records from the Authors table, and sort the result reversed alphabetically by the column name.

```SQL
SELECT  *
FROM Authors
ORDER BY name DESC
```
![image.png](attachment:image.png)

# Q\ Select all records from the Authors table, and sort the result alphabetically by the column's name.

```SQL
SELECT  *
FROM Authors
ORDER BY name
```
![image.png](attachment:image.png)

# Q\ Select all records where the Title column has the value ‘Great ' from the Books table.
 
```SQL 
SELECT title 
FROM Books
WHERE title LIKE '%Great%'
```

![image.png](attachment:image.png)

# Q\Use the NOT keyword to select all records where the country is NOT "USA".

```SQL
SELECT * FROM Authors
WHERE NOT country = "USA"
```
![image.png](attachment:image.png)

# Select all records where the country column has the value 'USA' or ‘India' from the “Authors” table

## ANS
```SQL
SELECT * FROM Authors
WHERE country = "USA" OR country="India"
```
![image.png](attachment:image.png)


# Q\Select all records where the age column has the value BETWEEN 50 - 60 in the “Authors” table.

```SQL
SELECT * FROM Authors
WHERE age BETWEEN 50 AND 60
```

![image.png](attachment:image.png)

# Q1\Use the MIN function to select the record with the smallest value of the Age column from the “Authors” table.


```SQL
SELECT *,MIN(age)
FROM Authors
```

![image.png](attachment:image.png)

# Q\ Choose the correct JOIN clause to view all books and their authors.

```SQL
SELECT Authors.ID, Books.Id
FROM BooksAuthors
JOIN Authors 
ON BooksAuthors.AuthorId = Authors.ID
JOIN Books
ON BooksAuthors.BookId =bookid
```

