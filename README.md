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

``` SQL
1
create table BooksAuthors 
( Authorid int,
 BookId int 
 );  

2
insert into BooksAuthors(AuthorId,BookId) values (1,2),(2,3),(3,4),(4,5),(5,6); 
3
select Country from Authors;
4
select DISTINCT Country from Authors;
5
select Name from Authors 
where Name LIKE 'S%';
6
select count(ID), country from Authors
group by country;
7
select * from Authors
order by name Ace;
8
select * from Authors
order by name DESC;
9
select * from Books
where title like '%Great%';
10
select * from Authors
where country not like 'USA';
11
SELECT * FROM Authors
WHERE country LIKE 'USA' OR 'India' ;
12
select * from Authors
where age BETWEEN 40 and 60;
13
select min(age )as minmum_age from Authors;
14
SELECT b.title,a.name
FROM Authors a 
INNER JOIN Books b
ON b.id=a.id

```
