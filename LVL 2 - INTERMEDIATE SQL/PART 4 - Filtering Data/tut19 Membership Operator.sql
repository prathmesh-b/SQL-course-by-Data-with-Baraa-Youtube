/* tut19 Membership Operator

- IN (check if  value exists in a list and will be shown in output)

- NOT IN ( It works in reverse and ignore what mentioned in list and 
shown in output)

== TASK 1 ==
Retrieve all customers from either Germany or USA

1) solution type 
SELECT *
FROM customers
WHERE country = 'Germany' OR country = 'USA'

output will be shown of people are from country Germany or usa not others

2) we can also solve using IN
SELECT *
FROM customers
WHERE country IN('Germany','USA')


===== TIP =====
Use IN instead of OR for multiple values in the same column to simplify SQL

for eg
SELECT *
FROM customers
WHERE country = 'Germany'
	OR country = 'USA'
	OR country = 'UK'
	OR country = 'Canada'
	OR country = 'Japan'

instead of above do this

SELECT *
FROM customers
WHERE country IN('Germany','USA', 'UK', 'Canada', 'Japan')


