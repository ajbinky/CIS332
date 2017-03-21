/*
  Andrew Behncke
  AJBinky@gmail.com
  AJBehncke1@dmacc.edu
  Chapter 9
*/

-- Problem 1

-- Problem 2

-- Problem 3

--problem 4

-- Problem 9
select b.title, oi.order#, c.state
from books b left join orderitems oi on b.isbn=oi.isbn
	left join orders o on oi.order#=o.order#
	left join customers c = o.customer#=c.customer#
order by 1; --first column
