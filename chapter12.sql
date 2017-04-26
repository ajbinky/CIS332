/*
  Andrew Behncke
  AJBinky@gmail.com
  AJBehncke1@dmacc.edu
<<<<<<< HEAD
  Chapter 12
*/

-- Problem 1
select b.title, b.retail
from books b
where b.retail < (select avg(retail) from books);

-- Problem 2
select b.title
from books b
where b.retail < (
  select avg(retail)
  from books
  where b.category = books.category
);

-- Problem 3
select *
from orders
where shipstate = (
  select shipstate
  from orders
  where order# = 1014
);

-- Problem 4
select distinct order#
from orderitems
where paideach*quantity < (
  select paideach*quantity
  from orderitems
  where order# = 1008
);

-- Problem 5

-- Problem 6
select *
  from books
  where category in (select distinct category
    from books
    where isbn in (select distinct oi.isbn
      from orderitems oi join orders o using (order#)
      where o.customer# = 1007));

-- Problem 7
select shipcity, shipstate
  from orders
  where order# = (select order#
    from orders
    where shipdate-orderdate = (select max(shipdate-orderdate)
    from orders));

-- Problem 8
select *
  from customers
  where customer# in (select customer#
    from orders
    where order# in (select order#
      from orderitems
      where isbn in (select isbn from books
        where retail = (select min(retail)
        from books))));

-- Problem 9
select count(distinct customer#) as "Customers of James Austin"
  from orders
  where order# in (select distinct order#
    from orderitems
    where isbn in (select isbn
      from bookauthor
      where authorid = (select authorid
        from author
        where fname = 'JAMES' AND lname = 'AUSTIN')));

-- Problem 10
select *
  from books
  where pubid = (select pubid
      from books
     where title = 'THE WOK WAY TO COOK');