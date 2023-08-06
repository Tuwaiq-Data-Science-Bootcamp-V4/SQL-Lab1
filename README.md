# SQL-Lab1
- Create a table "BooksAuthors" containing two fields (AuthorId, BookId)
- CREATE TABLE BookAuthors (
  AuthorId int NOT NULL,
  BookId int NOT NULL,
  FOREIGN key (AuthorId) REFERENCES Authors(ID),
  FOREIGN KEY (BookId) REFERENCES Books(Id)
);

<img src="captures/1.PNG" hight="400px">

- Insert at least 5 records into the BooksAuthors table.
- INSERT INTO BookAuthors
(AuthorId, BookId)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

<img src="captures/2.PNG" hight="400px">

- Write a statement that will select the Country column from the Authors table.
- SELECT Country FROM Authors;

<img src="captures/3.PNG" hight="400px">

- Select all the different values from the Country column in the Authors table.
- SELECT DISTINCT Country FROM Authors;

<img src="captures/4.PNG" hight="400px">

- Write an SQL query to return only Authors whose name begins with S.
- SELECT * from Authors WHERE Name LIKE "S%";

<img src="captures/5.PNG" hight="400px">

- List the number of Authors in each country.
- SELECT count(name), country
FROM Authors
GROUP by country;

<img src="captures/6.PNG" hight="400px">

- Select all records from the Authors table, and sort the result alphabetically by the column's name.
- SELECT * FROM Authors
Order BY Name ASC;

<img src="captures/7.PNG" hight="400px">

- Select all records from the Authors table, and sort the result reversed alphabetically by the column name.
- SELECT * FROM Authors
Order BY Name DESC;

<img src="captures/8.PNG" hight="400px">

- Select all records where the Title column has the value ‘Great ' from the Books table.
- SELECT * FROM Books 
WHERE title like "%Great%";

<img src="captures/9.PNG" hight="400px">

- Use the NOT keyword to select all records where the country is NOT "USA".
- SELECT * FROM Authors 
WHERE Country is not 'USA';

<img src="captures/10.PNG" hight="400px">

- Select all records where the country column has the value 'USA' or ‘India' from the “Authors” table
- SELECT * FROM Authors 
WHERE Country = "USA"
or 
Country = "India";

<img src="captures/11.PNG" hight="400px">

- Select all records where the age column has the value BETWEEN 50 - 60 in the “Authors” table.
- SELECT * FROM Authors
WHERE Age > 50
and Age < 60;

<img src="captures/12.PNG" hight="400px">

- Use the MIN function to select the record with the smallest value of the Age column from the “Authors” table.
- SELECT MIN(Age) from Authors;

<img src="captures/13.PNG" hight="400px">

- Choose the correct `JOIN` clause to view all books and their authors.
- SELECT * FROM BookAuthors
JOIN Books On Books.Id = BookAuthors.BookId
JOIN Authors on Authors.ID = BookAuthors.authorid;

<img src="captures/14.PNG" hight="400px">