/* tut23 Types of Joins 

A = Table 1
B = Table 2



classic Basic Joins
- NO Join
- Inner Join
- Left Join
- Right Join
- FULL Join

ADVANCE Join
- Left Anti Join
- Right Anti 
- Full Anti Join
- Cross Join



1) NO Join
Returns Data from tables without Combining Them

== Syntax == 
SELECT *
FROM A;

SELECT *
FROM B;

=== Task 1 ==
Retrieve all data from customers and orders as separate results


== Code ==
SELECT *
FROM customers;

SELECT *
FROM orders;

-- output show two complete table of customers and orders

2) INNER JOIN
Returns only matching Rows from both Tables

common data (matching data) from both table

== Syntax ==

SELECT *
FROM A
[TYPE] JOIN B  -- default type is INNER JOIN (but always write join to get no confusion)
ON < condition > -- at place of <condition> - how to match rows??
so here condition we take A.key = B.key common primary key from both

SELECT *
FROM A
INNER JOIN B
ON A.Key = B.Key

=Tip= 
The Order of tables doesn't matters
eg SELECT *
FROM A
INNER JOIN B
ON A.Key = B.Key

or u write
SELECT *
FROM B
INNER JOIN A
ON A.Key = B.Key


== TASK ==
Get all customers along with their orders, but only
for customers who have placed an order
