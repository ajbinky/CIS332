/*
  Andrew Behncke
  AJBinky@gmail.com
  AJBehncke1@dmacc.edu
  Chapter 8
*/

-- Problem 1
select lastname, firstname, state
from customers
where state = 'AZ';

-- Problem 2
select order#, shipdate
from orders
where orderdate like '%-APR-09';

-- Problem 3


--problem 4
select customer#, lastname, state
from customers
where state = 'GA' or state = 'NJ'
order by lastname;

-- Problem 5

-- Problem 6

-- Problem 7

-- Problem 8

-- Problem 9

-- Problem 10