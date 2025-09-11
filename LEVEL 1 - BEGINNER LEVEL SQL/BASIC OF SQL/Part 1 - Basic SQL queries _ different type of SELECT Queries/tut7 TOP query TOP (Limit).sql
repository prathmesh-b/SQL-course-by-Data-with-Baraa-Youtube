/* tut7 TOP query TOP (Limit)
Restrict the numbers of Rows returned
It gives result of rows acc to rows number like Row 1 then row 2
it has nothing to do with data but it works default acc to table column then rows

Syntax -
SELECT TOP 3 *
FROM customers

IMPT - TOP not work in postgreSQL instead LIMIT which is eual for it
here syntax
SELECT *
FROM customers
LIMIT 3

so it will output top 3 rows

TASK == retrieve only 3 customers 

*/
/*
code -
SELECT *
FROM customers
LIMIT 3 

*/

-- Task 2 ==  retrive top 3 customers with highest score.
-- to get top 3 first we order via DESC then LIMIT to 3

/* Here is code 

SELECT *
FROM customers
ORDER BY score DESC
LIMIT 3; 

Task 3 == retrive 2 lowest customers based on score
we just flip and used ascending

Answer -
SELECT *
FROM customers
ORDER BY score ASC
LIMIT 2;

Task 4 == Get the 2 most recent orders

So to solve this we filter out data using order date using ORDER BY 
and then DESC(latest date to oldest like that) and use LIMIT 2 to select recent acc to date

*/
SELECT *
FROM orders
ORDER BY order_date DESC
LIMIT 2;
