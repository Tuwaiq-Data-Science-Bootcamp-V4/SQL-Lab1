# SQL-Lab1
- Create a table "BooksAuthors" containing two fields (AuthorId, BookId)
  ```SQL
  CREATE TABLE BooksAuthors (
    AuthorId INT,
    BookId INT
  );
  ```
- Insert at least 5 records into the BooksAuthors table.
  ```SQL
  INSERT INTO BooksAuthors
  (AuthorId , BookId)
  VALUES
  (1,1),(2,2),(3,3),(4,4),(5,5);
  ```
- Write a statement that will select the Country column from the Authors table.
  ```SQL
  SELECT Country FROM Authors;
  ```
- Select all the different values from the Country column in the Authors table.
  ```SQL
  SELECT DISTINCT Country FROM Authors;
  ```
- Write an SQL query to return only Authors whose name begins with S.
  ```SQL
  SELECT Name FROM Authors WHERE Name LIKE 'S%';
  ```
- List the number of Authors in each country.
  ```SQL
  SELECT Country, COUNT (*) FROM Authors GROUP BY Country;
  ```
- Select all records from the Authors table, and sort the result alphabetically by the column's name.
  ```SQL
  SELECT * FROM Authors ORDER BY Name; 
  ```
- Select all records from the Authors table, and sort the result reversed alphabetically by the column name.
  ```SQL
  SELECT * FROM Authors ORDER BY Name DESC; 
  ```
- Select all records where the Title column has the value ‘Great ' from the Books table.
  ```SQL
  SELECT * FROM Books WHERE Title LIKE '%Great%';
  ```
- Use the NOT keyword to select all records where the country is NOT "USA".
  ```SQL
  WHERE Country IS NOT 'USA';
  ```
- Select all records where the country column has the value 'USA' or ‘India' from the “Authors” table
  ```SQL
  SELECT * FROM Authors  
  WHERE Country IS 'USA' OR Country IS 'India';
  ```
- Select all records where the age column has the value BETWEEN 50 - 60 in the “Authors” table.
  ```SQL
  SELECT * FROM Authors  
  WHERE Age BETWEEN 50 AND 60;
  ```
- Use the MIN function to select the record with the smallest value of the Age column from the “Authors” table.
  ```SQL
  SELECT MIN(Age) FROM Authors;
  ```
- Choose the correct `JOIN` clause to view all books and their authors.
  ```SQL
  SELECT Books.Title , Authors.Name FROM BooksAuthors
  INNER JOIN Books
  ON BooksAuthors.BookId = Books.id
  INNER JOIN Authors
  ON BooksAuthors.AuthorId = Authors.ID;
  ```
