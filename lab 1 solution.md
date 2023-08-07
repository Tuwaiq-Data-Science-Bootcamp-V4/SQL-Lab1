# SQL_Lab1

- Create a table "BooksAuthors" containing two fields ( AuthorId, BookId )
```sql
CREATE TABLE BooksAuthors (
    AuthorId INT NOT NULL,
    BookId  INT NOT NULL,
    FOREIGN KEY (AuthorId) REFERENCES Authors(Id),
    FOREIGN KEY (BookId) REFERENCES Books(Id)
);
```
- Insert at least 5 records into the BooksAuthors table.
  ```sql
   insert into BooksAuthors
	(AuthorId, BookId)
    values
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5);
  ```
- Write a statement that will select the Country column from the Authors table.
```sql
SELECT country 
FROM Authors;
```
- Select all the different values from the Country column in the Authors table.
```sql
SELECT distinct country 
FROM Authors;
```
- Write an SQL query to return only Authors whose name begins with S.
```sql
SELECT Name FROM Authors
WHERE Name LIKE 'S%';
```
- List the number of Authors in each country.
```sql
SELECT count(id), Country 
FROM authors
group by Country;
```
- Select all records from the Authors table, sort the result alphabetically by the column name.
```sql
SELECT * 
FROM authors ORDER bY Name;
```
- Select all records from the Authors table, and sort the result reversed alphabetically by the column name.
```sql
SELECT *
FROM Authors
ORDER by name DESC;
```
- Select all records where the Title column has the value 'Great ' from Books table.
```sql
SELECT *
FROM books
WHERE title like '%Great%';
```
- Use the NOT keyword to select all records where Country is NOT "USA".
```sql
 SELECT *
 FROM Authors
 WHERE NOT country='USA';
```
- Select all records where the country column has the value 'USA' or 'India' from Authors table
```sql
SELECT * 
FROM authors 
WHERE country = 'USA' OR country = 'India'
```
- Select all records where the age column has the value BETWEEN 50 - 60 in Authors table.
```sql
SELECT *
FROM authors
WHERE age BETWEEN 50 and 60;
```
- Use the MIN function to select the record with the smallest value of the Age column from Authors table.
```sql
SELECT * 
FROM authors 
WHERE age= (select min(age) from authors);
```
- Choose the correct `JOIN` clause to view all books and their authors
  ```sql
  SELECT *
  FROM booksauthors AS BA
  inner join books AS B
  on B.id = BA.bookid
  inner join authors AS A
  on A.id = BA.AuthorId;
  ```  
