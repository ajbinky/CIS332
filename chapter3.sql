/*
  Andrew Behncke
  AJBinky@gmail.com
  AJBehncke1@dmacc.edu
  Chapter 3 assignment
*/

-- Query the data dictionary
select * from user_tables
where table_name = 'BOOKS';

-- Problem 1
create table category (
  catcode char(2),
  catdesc varchar2(10)
);

-- Problem 2
create table employees (
  emp# number(5),
  firstname varchar2(25),
  lastname varchar2(25),
  job_class varchar2(4)
);

-- Problem 3
alter table employees
  add (EmpNum DATE default sysdate)
  add (EndDate DATE);
  
-- Problem 4
alter table employees
  modify (job_class varchar2(2));
  
-- Problem 5
alter table employees
  drop column enddate;
  
-- Problem 6
rename employees to jl_emps;

-- Problem 7
create table book_pricing
as ( select isbn as "ID", cost, retail, category
from books
);

-- Problem 8
alter table book_pricing
  set unused (category);
  
-- Problem 9
truncate table book_pricing;
select * from book_pricing;

-- Problem 10
drop table book_pricing purge;
drop table jl_emps;
flashback table jl_emps to before drop;
desc jl_emps;