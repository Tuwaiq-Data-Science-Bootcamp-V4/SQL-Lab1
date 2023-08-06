# SQL-Lab1
- Create a table "BooksAuthors" containing two fields (AuthorId, BookId)
- Insert at least 5 records into the BooksAuthors table.
- Write a statement that will select the Country column from the Authors table.
- Select all the different values from the Country column in the Authors table.
- Write an SQL query to return only Authors whose name begins with S.
- List the number of Authors in each country.
- Select all records from the Authors table, and sort the result alphabetically by the column's name.
- Select all records from the Authors table, and sort the result reversed alphabetically by the column name.
- Select all records where the Title column has the value ‘Great ' from the Books table.
- Use the NOT keyword to select all records where the country is NOT "USA".
- Select all records where the country column has the value 'USA' or ‘India' from the “Authors” table
- Select all records where the age column has the value BETWEEN 50 - 60 in the “Authors” table.
- Use the MIN function to select the record with the smallest value of the Age column from the “Authors” table.
- Choose the correct `JOIN` clause to view all books and their authors.

===========================================
## Answer

1-  CREATE TABLE BooksAuthors (
	AuthorId SERIAL,
	BookId SERIAL,
   FOREIGN KEY (AuthorId) REFERENCES Authors (ID),
   FOREIGN KEY (BookId) REFERENCES Books (ID)
);

2- INSERT INTO BooksAuthors
VALUES (1,1),(2,2),(3,3),(4,4),(5,5)

3- SELECT country from Authors

4- SELECT DISTINCT country from Authors

5- SELECT Name
from Authors 
where Name like 'S%'

6- SELECT country, count(ID) as Number_of_Author
from Authors
GROUP by country

7- SELECT ID, Name, Country, Age
from Authors
ORDER BY Name ASC

8- SELECT ID, Name, Country, Age
from Authors
ORDER BY Name DESC

9- SELECT id, title
from Books
where title like '%Great%'

10- SELECT ID, Name, Country, Age
FROM Authors
WHERE country is not 'USA'

11- SELECT ID, Name, Country, Age
FROM Authors
WHERE country == 'USA' or  Country == 'India'

12- SELECT ID, Name, Country, Age
FROM Authors
WHERE age BETWEEN 50 and 60

13- SELECT ID, Name, Country, min(Age) as Youngest
FROM Authors

14- SELECT *
from BooksAuthors
JOIN Authors
on BooksAuthors.Authorid == Authors.ID
JOIN Books
ON BooksAuthors.BookId == Books.Id

