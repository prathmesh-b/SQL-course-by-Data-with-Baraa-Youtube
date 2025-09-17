/* 

LOGICAL OPERATORS
- AND
- OR
- NOT

1) AND Operator
AND - All conditions must be TRUE

eg 
WHERE country = 'USA' AND score > 500
so here both condition should be true in order to get result

so here is result/output

John USA score 900

only john fulfills country USA and Score 900

== TASK 1 ==

Retrieve all customers who are from the USA and have a score
greater than 500

SELECT *
FROM customers
WHERE country = 'USA' AND score > 500

== CODE end ==

2) OR Operator
OR - At least one condition must be true

eg WHERE country = 'USA' OR score > 500
so here anyone condition should be true in order to get result

so rows where one of condition is true it will be shown in result

== TASK 2 ==

Retrieve all customers who are from the USA or have a score
greater than 500


== code here ==

SELECT *
FROM customers
WHERE country = 'USA' OR score > 500

== CODE end ==

3) NOT Operator

(Reverse) Excludes matching values
so suppose here WHERE NOT country = 'USA' 
Here country which is not usa will be shown

== TASK 3 ==
Retrieve all customers with a score NOT less than 500


== code here ==

SELECT *
FROM customers
 -- WHERE score >= 500  --u can do this or using NOT
WHERE NOT score < 500 

*/