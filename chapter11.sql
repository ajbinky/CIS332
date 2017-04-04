/*
  Andrew Behncke
  AJBinky@gmail.com
  AJBehncke1@dmacc.edu
  Chapter 11
*/

-- Problem 1
select count(*)
  from books
  where category = 'COOKING';

-- Problem 2
select count(*)
  from books
  where retail > 30;

-- Problem 3
select max(pubdate)
  from books;

-- Problem 4
select sum(b.RETAIL)-sum(b.COST) as "PROFIT"
  from orders o join orderitems oi using (order#)
  join books b using (isbn)
  where customer# = 1017;

-- Problem 5
select min(retail)
  from books
  where category = 'COMPUTER';

-- Problem 6
select avg(sum(quantity*paideach)) as "Profit per order"
  from orders o join orderitems using (order#)
  group by order#;

-- Problem 7
select customer#, count(order#)
  from orders
  group by customer#;

-- Problem 8
select p.name, b.category, avg(retail)
  from books b join publisher p using (pubid)
  where category = 'CHILDREN' OR category = 'COMPUTER'
  group by p.name, b.category;

-- Problem 9
select distinct c.firstname || ' ' || c.lastname as "Customer name"
  from customers c join orders o using (customer#)
  join orderitems oi using (order#)
  where (c.state = 'FL' OR c.state = 'GA')
  AND oi.paideach > 80;

-- Problem 10
select max(b.retail)
  from books b join bookauthor ba using (isbn)
  join author a using (authorid)
  where a.FNAME = 'LISA' and a.LNAME = 'WHITE';
  