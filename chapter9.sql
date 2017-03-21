/*
  Andrew Behncke
  AJBinky@gmail.com
  AJBehncke1@dmacc.edu
  Chapter 9
*/

-- Problem 1
select b.title, p.name, p.phone
from books b, publisher p;

-- Problem 2
select o.order#, c.FIRSTNAME || ' ' || c.LASTNAME as "CUSTOMER NAME"
from orders o, customers c
  where c.customer# = o.customer#
  and o.SHIPDATE is null;

-- Problem 3
select distinct c.firstname || ' ' || c.lastname as "CUSTOMER NAME"
from customers c join orders o using (customer#)
join orderitems oi using (order#)
join books b using (isbn)
where b.CATEGORY = 'COMPUTER'
and c.STATE = 'FL';

-- Problem 4
select distinct b.TITLE
from customers c join orders o using (customer#)
join orderitems oi using (order#)
join books b using (isbn)
where c.FIRSTNAME = 'JAKE'
and c.LASTNAME = 'LUCAS';

-- Problem 5
select b.TITLE, b.RETAIL
from customers c join orders o using (customer#)
join orderitems oi using (order#)
join books b using (isbn)
where c.FIRSTNAME = 'JAKE'
and c.LASTNAME = 'LUCAS'
order by o.ORDERDATE desc;

-- Problem 6
select b.title
from books b join bookauthor using (isbn)
join author a using (authorid)
where a.lname = 'ADAMS';

-- Problem 7
select p.gift
from promotion p, books b
where b.title = 'SHORTEST POEMS'
and b.retail between p.minretail and p.maxretail;

-- Problem 8
select distinct a.fname || ' ' || a.lname
from author a join bookauthor ba using (authorid)
join books b using (isbn)
join orderitems oi using (isbn)
join orders o using (order#)
join customers c using (customer#)
where c.FIRSTNAME = 'BECCA'
and c.LASTNAME = 'NELSON';

-- Problem 9
select b.title, oi.order#, c.state
from books b left join orderitems oi on b.isbn=oi.isbn
	left join orders o on oi.order#=o.order#
	left join customers c on o.customer#=c.customer#
order by 1;

-- Problem 10
-- An EMPLOYEES table was added to the JustLee Books database to track employee information. Display a list of each employee's name, job ttitle, and manager's name. Use column aliases to clearly identify employee and manager name values. Include all employees in the list and sort by manager name.