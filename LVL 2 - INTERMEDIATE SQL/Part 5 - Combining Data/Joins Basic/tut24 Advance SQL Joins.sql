/*
tut 24 ADVANCE SQL JOINS: ANTI & CROSS

ANTI JOIN - Finding everything that is in one table and not in the other

some business question we can answers like
- What customers have NOT placed an order?
- What products do NOT have inventory?

Advance joins type



=== 1) LEFT ANTI JOIN ===

Returns Row from Left that has NO MATCH in Right

== A Table ==
Only UnMatching Rows

Primary source {main source}

== B Table ==
Nothing 

Lookup (Filter)
Not for Data, Just a Filter

==== Syntax ====
the order of tables is important

SELECT *
FROM A
LEFT JOIN B
ON A.Key = B.Key
WHERE B.Key IS NULL  -- WHERE for lookup (filter) and B Table has disabled to just lookup



===== TASK =====
Get all customers who haven't placed any order


SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL  -- here we want customers id who have not order anything

how to code STEP 1 do classical select and left join
then apply WHERE Step 2 for filtering

=== USECASE ===
we want to check existence "filtering"



=== 2) RIGHT ANTI JOIN ===

it's opposite of LEFT ANTI JOIN 

Returns Row from Right that has NO MATCH in Left

== B Table ==
Only UnMatching Rows

Primary source {main source}

== A Table ==
Nothing 

Lookup (Filter)
Not for Data, Just a Filter


==== Syntax ====
the order of tables is important

SELECT *
FROM A
RIGHT JOIN B
ON A.Key = B.Key
WHERE A.Key IS NULL  -- WHERE for lookup (filter) and A Table has disabled to just lookup


=== TASK ===
Get all orders without matching customers

SELECT *
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id  IS NULL

ALTERNATIVE Solution with LEFT JOIN

switch the table as done earlier

SELECT *
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id
WHERE c.id  IS NULL


u get same exact result




==== 3) FULL ANTI JOIN ====
Returns only rows that don't match in either Tables


ONLY Unmatching data (rows)


==== Syntax ====
the order of tables doesn't matter



SELECT *
FROM A
FULL JOIN B
ON A.Key = B.Key
WHERE
B.Key IS NULL
	OR
A.Key IS NULL


= == Task ===
Find customers without orders and order without customers


SELECT *
FROM orders AS o
FULL JOIN customers AS c
ON c.id = o.customer_id
WHERE c.id IS NULL OR o.customer_id IS NULL

== USECASE ==
check existience of data




==== 4) ADVANCE INNER JOIN ====
challenge to solve without using inner join

===== TASK =====
Get all customers along with their orders, but only for
customers who have placed an order
(WITHOUT USING INNER JOIN)


SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NOT NULL




==== 4) CROSS JOIN ====
Combines every row from left with every row from right. all possible combinations  -Cartersian Join-

A Table = Everything
B Table = Everything

suppose 2 rows from A Table  3 rows from B
2 * 3 = 6 - total rows


== Syntax ==
SELECT *
FROM A
CROSS JOIN B


== Task ==
Generate all possible combinations of customers and orders.

SELECT *
FROM customers
CROSS JOIN orders
                        
output
here rule not apply so everything shows. this is use to see combination say product
table with column table