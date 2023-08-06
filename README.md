# SQL-Lab1
## Create a table "BooksAuthors" containing two fields (AuthorId, BookId)
  CREATE table BooksAuthors (AuthorId INT , BookId INT); 

## Insert at least 5 records into the BooksAuthors table.
 INSERT INTO BooksAuthors VALUES(1,1),(2,2),(3,3),(4,4),(5,5) 
## Write a statement that will select the Country column from the Authors table.

  SELECT Country FROM Authors
## Select all the different values from the Country column in the Authors table.
  SELECT  DISTINCT Country FROM Authors 
## Write an SQL query to return only Authors whose name begins with S.
 SELECT * FROM  Authors WHERE NAME LIKE "S%" 
##  List the number of Authors in each country.
 SELECT COUNT(ID) , Country FROM Authors GROUP by 2 
## Select all records from the Authors table, and sort the result alphabetically by the column's name.
SELECT * FROM Authors order by name 
## Select all records from the Authors table, and sort the result reversed alphabetically by the column name.
SELECT * FROM Authors order by   name DESC 
## Select all records where the Title column has the value ‘Great ' from the Books table.
 select * from Books WHERE TITLE LIKE "%Great%"
##  Use the NOT keyword to select all records where the country is NOT "USA".
SELECT  *  FROM Authors WHERE COUNTRY != "USA" 
##  Select all records where the country column has the value 'USA' or ‘India' from the “Authors” table
SELECT * FROM Authors WHERE country = "USA" OR country = "India" 

## Select all records where the age column has the value BETWEEN 50 - 60 in the “Authors” table.
SELECT * FROM  Authors WHERE Age between 50 and 60 
## Use the MIN function to select the record with the smallest value of the Age column from the “Authors” table.

SELECT * FROM Authors where  age = (select min(age) from Authors)
## Choose the correct `JOIN` clause to view all books and their authors.

SELECT BooksAuthors.authorid , Authors.name , BooksAuthors.BookId , Books.Title  
from BooksAuthors 
  INNER join Books on BooksAuthors.BookId = Books.Id
    INNER JOIN Authors on Authors.ID = BooksAuthors.authorid
