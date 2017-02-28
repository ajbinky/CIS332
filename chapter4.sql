/*
  Andrew Behncke
  AJBinky@gmail.com
  AJBehncke1@dmacc.edu
  Chapter 4
*/

-- Problem 1
create table store_reps (
  rep_ID number(5),
  last varchar2(15),
  first varchar2(10),
  comm char(1) default 'Y',
  constraint store_reps_rep_id_pk primary key (rep_ID)
);

-- Problem 2
alter table store_reps
  modify (first constraint store_reps_first_nn not null)
  modify (last constraint store_reps_last_nn not null);
  
-- Problem 3
alter table store_reps
  add constraint store_reps_comm_ck check (comm = 'Y' or comm = 'N');
  
-- Problem 4
alter table store_reps
  add base_salary number(7,2)
  add constraint store_reps_base_salary_ck check (base_salary > 0);
  
-- Problem 5
create table book_stores (
  store_id number(8) primary key,
  name varchar(30) unique not null,
  contact varchar2(30),
  rep_id varchar2(5)
);

-- Problem 6
alter table book_stores
  modify (rep_id number(5));
alter table book_stores
  add constraint book_stores_rep_id_fk foreign key (rep_id)
  references store_reps (rep_id);
  
drop table book_stores;
  
-- Problem 7
alter table book_stores
  drop constraint book_stores_rep_id_fk;
alter table book_stores
  add constraint book_stores_rep_id_fk foreign key (rep_id)
  references store_reps (rep_id)
  on delete cascade;
  
-- Problem 8
create table rep_contracts (
  store_ID number(8) references book_stores (store_id),
  name number(5),
  quarter char(3),
  rep_id number(5) references store_reps (rep_id),
  constraint rep_contracts_pk primary key (rep_id, store_id, quarter)
);

-- Problem 9
select * from user_cons_columns where table_name = 'STORE_REPS';

-- Problem 10
alter table store_reps
  disable constraint store_reps_base_salary_ck;
  
alter table store_reps
  enable constraint store_reps_base_salary_ck;