# SQL-Lab1
- Create a table "BooksAuthors" containing two fields (AuthorId, BookId)
  ```SQL
  CREATE TABLE BooksAuthors (
  AuthorId INT,
  BookId INT,
  FOREIGN KEY (AuthorId) REFERENCES Authors(id)
  FOREIGN KEY (BookId) REFERENCES Books(id));
  ```
  
- Insert at least 5 records into the BooksAuthors table.
  ```SQL
  INSERT INTO BooksAuthors
	  (authorid,bookid)
  VALUES
	  (2, 3),
    (5,1),
    (5,4),
    (4,2),
    (1,5)
  ```
- Write a statement that will select the Country column from the Authors table.
  ```SQL
  SELECT Country FROM Authors;
  ```
  ![alt text](image.jpg)
- Select all the different values from the Country column in the Authors table.
  ```SQL
  SELECT DISTINCT country FROM Authors;
  ```
- Write an SQL query to return only Authors whose name begins with S.
  ```SQL
  SELECT name FROM Authors WHERE name LIKE "S%"
  ```
- List the number of Authors in each country.
  ```SQL
  SELECT country, COUNT(id) FROM Authors 
  GROUP BY country;
  ```
- Select all records from the Authors table, and sort the result alphabetically by the column's name.
  ```SQL
  SELECT * from Authors ORDER BY Name asc;
  ```
- Select all records from the Authors table, and sort the result reversed alphabetically by the column name.
  ```SQL
  SELECT * from Authors ORDER BY Name DESC;
  ```
- Select all records where the Title column has the value ‘Great ' from the Books table.
  ```SQL
  SELECT * FROM Books WHERE title LIKE '%great%'
  ```
- Use the NOT keyword to select all records where the country is NOT "USA".
  ```SQL
  SELECT * FROM Authors WHERE country not LIKE 'USA'
  ```
- Select all records where the country column has the value 'USA' or ‘India' from the “Authors” table
  ```SQL
  SELECT * FROM Authors WHERE country = 'USA' OR  country = 'India';
  ```
- Select all records where the age column has the value BETWEEN 50 - 60 in the “Authors” table.
  ```SQL
  SELECT * from Authors WHERE age BETWEEN 50 AND 60
  ```
- Use the MIN function to select the record with the smallest value of the Age column from the “Authors” table.
  ```SQL
  SELECT MIN(age) FROM Authors
  ```
- Choose the correct `JOIN` clause to view all books and their authors.
  ```SQL
  SELECT * FROM BooksAuthors
  JOIN Authors on Authors.ID = BooksAuthors.AuthorId
  join Books  on Books.id = BooksAuthors.BookId
  ```
