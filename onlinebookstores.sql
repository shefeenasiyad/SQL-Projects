USE onlinebookstores;
CREATE TABLE books(
book_id VARCHAR(5) NOT NULL PRIMARY KEY,
title VARCHAR(50) NOT NULL,
author_id VARCHAR(5) NOT NULL ,
price FLOAT NOT NULL,
publication_year INT NOT NULL,
FOREIGN KEY(author_id)REFERENCES authors(author_id)
);
USE onlinebookstores;
CREATE TABLE authors(
author_id VARCHAR(5) NOT NULL PRIMARY KEY,
author_name VARCHAR(50),
country VARCHAR(50)
);
USE onlinebookstores;
CREATE TABLE orders(
order_id VARCHAR(5) NOT NULL PRIMARY KEY,
book_id  VARCHAR(5) NOT NULL,
customer_name VARCHAR(50) NOT NULL,
order_date DATE NOT NULL,
FOREIGN KEY(book_id) REFERENCES books(book_id) 
);
INSERT INTO books(book_id, title,author_id, price, publication_year)
VALUES
('b1','Harrypotter','a1',  25, 2025),
('b2','Balyakala sakhi','a2', 35, 2024),
('b3', 'Indica','a3',32, 2024),
('b4','Cricket my style','a4', 45, 2020),
('b5','Arthasastra','a5',  45, 2021);

INSERT INTO authors( author_id,author_name, country)
VALUES
('a1','JK Rowling' , 'England'),
('a2', 'Vaikom Muhammed Basheer','India'),
('a3', 'Megesthenes', 'Greece'),
('a4', 'Kapil Dev', 'India'),
('a5', 'Chanakya', 'India');

INSERT  INTO orders( order_id,book_id,customer_name,order_date)
VALUES
('o1','b1','Sreeja','2021,10,9'),
('o2','b2', 'remya','2020,11,7'),
('o3', 'b3','Mohan','2020,10,8'),
('o4','b4', 'Malu','2000,5,4'),
('o5','b5', 'vinu','2001,6,11');
SELECT * FROM authors;
ALTER TABLE books ADD generation VARCHAR(50);
SELECT * FROM books;
ALTER TABLE orders ADD quantity INT;
SELECT * FROM orders;
SELECT  books.title,
authors.author_name FROM books
INNER JOIN authors ON books.author_id=authors.author_id;
SELECT orders.order_id,
books.title,
orders.customer_name,
orders.order_date FROM orders INNER JOIN books ON orders.book_id=books.book_id;
