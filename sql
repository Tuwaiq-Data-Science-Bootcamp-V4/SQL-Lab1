/* 1 :
CREATE table BooksAuthors (AuthorId INT , BookId INT); 

2:
INSERT INTO BooksAuthors VALUES(1,1),(2,2),(3,3),(4,4),(5,5) 

3:

SELECT Country FROM Authors
4:

SELECT  DISTINCT Country FROM Authors 

5:
SELECT * FROM  Authors WHERE NAME LIKE "S%" 
6:
SELECT COUNT(ID) , Country FROM Authors GROUP by 2 

7:
SELECT * FROM Authors order by name 
8:
SELECT * FROM Authors order by   name DESC 
9:
select * from Books WHERE TITLE LIKE "%Great%"

10 :
SELECT  *  FROM Authors WHERE COUNTRY != "USA" 
11:
SELECT * FROM Authors WHERE country = "USA" OR country = "India" 
12:
SELECT * FROM  Authors WHERE Age between 50 and 60 
13:
select min(age) from Authors  
14:

select authors.name, books.title from books
inner join authors
on authors.id = books.id

14:
SELECT BA.BookId, B.Title, BA.AuthorId, Authors.name
FROM BooksAuthors BA
	INNER JOIN Books B
	ON B.Id = BA.BookId
		INNER JOIN Authors
		on Authors.Id = BA.AuthorId
*/




