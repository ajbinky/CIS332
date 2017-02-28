/*
Andrew Behncke
AJBinky@gmail.com
AJBehncke1@dmacc.edu
Chapter 2 Assignment
*/

-- Problem 1
select * from books;

-- Problem 2
select title from books;

-- Problem 3
select title, pubdate "Publication Date" from books;

-- Problem 4
select customer#, city, state from customers;

-- Problem 5
select name, contact "Contact Person", phone from publisher;

-- Problem 6
select distinct category from books;

-- Problem 7
select distinct customer# from orders;

-- Problem 8
select category, title from books;

-- Problem 9
select lname || ', ' || fname as Authors from author;

-- Problem 10
select order#, item#, isbn, quantity, paideach, quantity * paideach as "ITEM TOTAL" from orderitems;