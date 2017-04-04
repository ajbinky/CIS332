/*
  Andrew Behncke
  AJBinky@gmail.com
  AJBehncke1@dmacc.edu
  Chapter 10
*/

-- Problem 1
select substr(firstname, 1, 1) || lower(substr(firstname, 2)) || ' ' || substr(lastname, 1, 1) || lower(substr(lastname, 2)) as "Customer Name" from customers;

-- Problem 2
select customer#, NVL2(referred, 'Referred', 'Not Referred') as "Referred" from customers;

-- Problem 3
select b.title, TO_CHAR(b.retail-b.cost, '$999.99') as "Profit"
from orders o join orderitems oi using (order#)
  join books b using (isbn)
  where order# = 1002;

-- Problem 4
select title, round((cost / retail) * 100, 0) as "Markup Percentage"
  from books
order by 1;

-- Problem 5
select TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS') as "Current Date" from dual;

-- Problem 6
select title, lpad(to_char(cost), 12, '*') from books;

-- Problem 7
select unique length(isbn) from books;

-- Problem 8
select title, pubdate, to_char(sysdate) as "Current Date", trunc(months_between(sysdate, pubdate)) as "Age" from books;

-- Problem 9
select next_day(sysdate, 'WEDNESDAY') from dual;

-- Problem 10 32328, 90404
select customer#, substr(zip, 3, 2), instr(zip, '3')
from customers;