/*
  Andrew Behncke
  AJBinky@gmail.com
  AJBehncke1@dmacc.edu
  Chapter 11
*/

-- Problem 1


-- Problem 2


-- Problem 3


-- Problem 4


-- Problem 5


-- Problem 6


-- Problem 7


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