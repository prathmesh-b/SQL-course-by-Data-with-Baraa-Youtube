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







------- 2) INNER JOIN --------

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

== code ==
SELECT *
FROM customers
INNER JOIN orders
ON id = customer_id

we don't get no 4,5 data because there is not matching id in both table

we got required output but we see id , customer_id again repeating
like 1,2,3

so we will change code and select required column only
== updated code==

SELECT 
	id,
	first_name,
	order_id,
	sales
FROM customers
INNER JOIN orders
ON id = customer_id


=== impt issue == Column Ambiguity(sometimes u set same name columns)
solution== Add the table name before the column to avoid confusion
in joins with same-named columns

you can write customers.id which means id of customers table
orders.id which means id of orders column

above code be like
SELECT 
	customers.id, (id from customer table)
	first_name,
	orders.id,    (orders is table name. which means id column from orders table)
	sales
FROM customers
INNER JOIN orders
ON customers.id = orders.customer_id


== TIPS ===== in order to save time customers.id also can be written to save time
c.id (sql understand u telling customers table id column)
====

=== uPdated Code ==

SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id
-- when u doing inner joins of two tables order not matter like 
-- FROM customers AS c INNER JOIN orders AS o , or like FROM orders AS o INNER JOIN customer AS c

== how inner join works ==
it start matching row from 1 table FROM__ with other table, row which matches are then displayed in result


====== INNER JOIN when it will be use ======
1) Recombine Data from tables -- "Big Picture" to get
2) Check Existence -- "Filtering" the data






------- 3) LEFT JOIN --------

Returns all rows from left table (A) and only matching one from right table (B)

-- impt-- 
left table A is Primary source of data we can't miss anything from it
right table B is secondary source of data we use just to get additional data


===== Syntax ======
Here Order of Table is very important 

SELECT *
FROM A -- Left table data from here everything
LEFT JOIN B  -- Right table
ON A.Key = B.Key

====================

=== TASK ===
Get all customers along with their orders, including
those without orders

SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c   -- here customer is left table so FROM 
LEFT JOIN orders AS o
ON c.id = o.customer_id

--null means no matching data



====== LEFT JOIN when it will be use ======
1) Recombine Data from tables -- "Big Picture" to get   (INNER LEFT)
2) DATA Enrichment "Extra Info" (LEFT)
3) Check Existence -- "Filtering" the data    (INNER LEFT + WHERE)








------- 4) RIGHT JOIN --------

This is total opposite of LEFT JOIN

Returns all rows from Right table (B) and only matching one from Left table (A)

-- impt-- 
left table A is Secondary source of data we use just to get additional data            
right table B is Primary source of data we get all data from can't miss anything from it


===== Syntax ======
Here Order of Tables is very important 

SELECT *
FROM A -- Left table 
RIGHT JOIN B  -- Right table data from here everything
ON A.Key = B.Key

====================

=== TASK ===

Get all customers along with their orders including orders without
matching customers

SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c   
RIGHT JOIN orders AS o  -- here order table is right we want all data from it
ON c.id = o.customer_id

here despit * not used with SELECT to get all data from 
orders table RIGHT JOIN gives all data from right table

--null means no matching data




======= SOLVE SAME TASK USING LEFT JOIN =======
solution below




====== ALternative to RIGHT JOIN ======
 we can switch table A and B to B=left A=right




 A= LEFT TABLE B= RIGHT TABLE           B= Left table A=Right Table

 SELECT *                                  SELECT *  
 FROM A                                    FROM B
 RIGHT JOIN B            ALternative       LEFT JOIN A 
 ON A.Key = B.Key                          ON A.Key = B.Key    


 WE  GET   SAME RESULT 

=== solution for SOLVE SAME TASK USING LEFT JOIN ======
SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM orders AS o   
LEFT JOIN customers AS c  
ON c.id = o.customer_id



 LEFT JOIN  IS MOST USED
 RIGHT JOIN NOT SO FAMOUS

 so advice of mentor is to stick with LEFT JOIN and leave RIGHT 
 Just have order of table right






 ------- 5) FULL JOIN --------

 Returns all the rows from both the tables

 A table all rows
 B table all rows


 The order of tables doesn't matter

 SELECT *
 FROM A
 FULL JOIN B
 ON A.Key = B.Key

 OR


 SELECT *
 FROM B
 FULL JOIN A
 ON A.Key = B.Key


 ====== Task =====
 Get all customers and all orders,
 even if there's no match

 SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c   
FULL JOIN orders AS o
ON c.id = o.customer_id


 even if you  change the table orders u get same data 

 === use case ===
 check existence "filetering"  FULL + WHERE 