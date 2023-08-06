# SQL-Lab1 (Solution)
- Create a table "BooksAuthors" containing two fields (AuthorId, BookId)
```sql
  CREATE table BooksAuthors(AuthorId int,BookId int,FOREIGN KEY (AuthorId) REFERENCES Authors(id),
                         FOREIGN KEY (BookId) REFERENCES Books(id))
```
- Insert at least 5 records into the BooksAuthors table.
 ```sql
INSERT INTO BooksAuthors VALUES (1,1),(2,2),(3,3),(4,4),(5,5)
  ```
- Write a statement that will select the Country column from the Authors table.
 ```sql
SELECT country from Authors
  ```
- Select all the different values from the Country column in the Authors table.
```sql
SELECT DISTINCT country from Authors
```
- Write an SQL query to return only Authors whose name begins with S.
```sql
SELECT * from Authors WHERE name LIKE 'S%'
```
- List the number of Authors in each country.
 ```sql
SELECT count(name),country from Authors GROUP by country
  ```
- Select all records from the Authors table, and sort the result alphabetically by the column's name.
 ```sql
SELECT * from Authors order by name ASC
  ```
- Select all records from the Authors table, and sort the result reversed alphabetically by the column name.
 ```sql
SELECT * from Authors order by name DESC
  ```
- Select all records where the Title column has the value ‘Great ' from the Books table.
 ```sql
SELECT * from Books where title like '%Great%'
  ```
- Use the NOT keyword to select all records where the country is NOT "USA".
 ```sql
SELECT * from Authors where NOT country='USA'
  ```
- Select all records where the country column has the value 'USA' or ‘India' from the “Authors” table
 ```sql
SELECT * from Authors WHERE country='USA' OR country='India'
  ```
- Select all records where the age column has the value BETWEEN 50 - 60 in the “Authors” table.
 ```sql
SELECT * from Authors WHERE age BETWEEN 50 AND 60
  ```
- Use the MIN function to select the record with the smallest value of the Age column from the “Authors” table.
```sql
select * from Authors where age = (SELECT min(age) from Authors)
  ```
- Choose the correct `JOIN` clause to view all books and their authors.
```sql
SELECT * from Books INNER JOIN BooksAuthors ON BooksAuthors.BookId=Books.Id
INNER JOIN Authors on BooksAuthors.AuthorId=Authors.id
```
