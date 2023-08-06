# SQL-Lab1

### 1- Create a table "BooksAuthors" containing two fields (AuthorId, BookId)
**Code:**
```
CREATE TABLE BooksAuthors(
  AuthorId int,
  BookId int,
  FOREIGN KEY (AuthorId) REFERENCES Authors(id),
  FOREIGN KEY (BookId) REFERENCES Books(id)
);
```
**Screenshot:**
![image](https://github.com/RynHb/SQL-Lab1/assets/62115163/1ccd302c-63f3-4acd-941a-3b1cc4e78c5e)

### 2- Insert at least 5 records into the BooksAuthors table.
**Code:**
```
INSERT INTO BooksAuthors VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
```
**Screenshot:**
![image](https://github.com/RynHb/SQL-Lab1/assets/62115163/8d69f2d0-f5f4-4d13-b01c-bfc1fd884bc7)

### 3- Write a statement that will select the Country column from the Authors table.
**Code:**
```
SELECT Country FROM Authors;
```
**Screenshot:**
![image](https://github.com/RynHb/SQL-Lab1/assets/62115163/07eacb8b-9813-4f4e-8a20-415e37ff42dc)

### 4- Select all the different values from the Country column in the Authors table.
**Code:**
```
SELECT DISTINCT Country FROM Authors;
```
**Screenshot:**
![image](https://github.com/RynHb/SQL-Lab1/assets/62115163/06e749e0-050d-4008-aad5-b70a7f74836b)

### 5- Write an SQL query to return only Authors whose name begins with S.
**Code:**
```
SELECT *
FROM Authors
WHERE name Like 'S%';
```
**Screenshot:**
![image](https://github.com/RynHb/SQL-Lab1/assets/62115163/f55c315a-a0cc-4e48-b4fa-19581ee9b9a9)

### 6- List the number of Authors in each country.
**Code:**
```
SELECT COUNT(id), country
FROM Authors
GROUP BY country;
```
**Screenshot:**
![image](https://github.com/RynHb/SQL-Lab1/assets/62115163/d43549c6-2707-4c2d-93fe-439df579ce28)

### 7- Select all records from the Authors table, and sort the result alphabetically by the column's name.
**Code:**
```
SELECT *
FROM Authors
ORDER By name ASC;
```
**Screenshot:**
![image](https://github.com/RynHb/SQL-Lab1/assets/62115163/ac0b9069-517a-45cf-a4be-100c3816fc64)

### 8- Select all records from the Authors table, and sort the result reversed alphabetically by the column name.
**Code:**
```
SELECT *
FROM Authors
ORDER By name DESC;
```
**Screenshot:**
![image](https://github.com/RynHb/SQL-Lab1/assets/62115163/d9369653-da23-414d-a99e-60732668b0fd)

### 9- Select all records where the Title column has the value ‘Great ' from the Books table.
**Code:**
```
SELECT *
FROM Books
WHERE title LIKE '%Great %';
```
**Screenshot:**
![image](https://github.com/RynHb/SQL-Lab1/assets/62115163/9898bd89-ab18-4bd4-ada3-02402d2885c0)

### 10- Use the NOT keyword to select all records where the country is NOT "USA".
**Code:**
```
SELECT *
FROM Authors
WHERE NOT country = 'USA';
```
**Screenshot:**
![image](https://github.com/RynHb/SQL-Lab1/assets/62115163/858ea3a8-2513-4974-bd82-a7f2a9354388)

### 11- Select all records where the country column has the value 'USA' or ‘India' from the “Authors” table.
**Code:**
```
SELECT *
FROM Authors
WHERE country = 'USA' OR country = 'India';
```
**Screenshot:**
![image](https://github.com/RynHb/SQL-Lab1/assets/62115163/06c11d04-77a4-4750-83af-519beaf8ab95)

### 12- Select all records where the age column has the value BETWEEN 50 - 60 in the “Authors” table.
**Code:**
```
SELECT *
FROM Authors
WHERE age BETWEEN 50 and 60;
```
**Screenshot:**
![image](https://github.com/RynHb/SQL-Lab1/assets/62115163/153171f8-2e73-47fa-9480-3a807d8c3025)

### 13- Use the MIN function to select the record with the smallest value of the Age column from the “Authors” table.
**Code:**
```
SELECT MIN(Age)
From Authors;
```
**Screenshot:**
![image](https://github.com/RynHb/SQL-Lab1/assets/62115163/cf359866-33cc-431c-b570-824bdd409349)


### 14- Choose the correct `JOIN` clause to view all books and their authors.
**Code:**
```
SELECT Books.Title, Authors.Name
FROM Authors
INNER JOIN BooksAuthors ON Authors.ID = BooksAuthors.AuthorId
INNER JOIN Books ON Books.Id = BooksAuthors.BookId;
```
**Screenshot:**
![image](https://github.com/RynHb/SQL-Lab1/assets/62115163/91fbb6e0-0d98-4819-927e-5a7ee4f0c4cf)
