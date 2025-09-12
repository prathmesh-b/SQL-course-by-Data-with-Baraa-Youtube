/* 
tut 16 - Comparison Operators
compare two things

Formula will be like this 

Condition ->    [  Expression Operator Expression ]

Column 1 = Column 2         first_name = last_name
Column 1 = Value             first_name = 'John'
Function = Value            UPPER(first_name) = 'John'
Expression = Value          Price * Quantity = 1000

last one is Advance topic    (SELECT AVG(sales)
Subquery = Value               FROM Orders )    = 1000


-----------------------

Let's start learnig with

1) =     Checks if two values are (equal)


== Task ==

Retrive all customers from Germany

== Code here ==
SELECT *
FROM customers
WHERE country = 'Germany'


2) <>  !=    Checks if two values are (not equal)

== Task ==

Retrive all customers who are not from Germany

== Code here ==
SELECT *
FROM customers
WHERE country != 'Germany'


3) ( > )     Checks if a value is greater than another value

== Task ==

Retrieve all customers with a score greater than 500

== Code here ==
SELECT *
FROM customers
WHERE score > 500

4) ( >= )     Checks if a value is greater than or equal to another value

== Task ==

Retrieve all customers with a score of 500 or more

== Code here ==
SELECT *
FROM customers
WHERE score >= 500


5) ( < )     Checks if a value is less than another value

== Task ==
Retrieve all customers with a score less than 500

== Code here ==
SELECT *
FROM customers
WHERE score < 500


6) ( <= )     Checks if a value is less than or equal to another value

== Task ==
Retrieve all customers with a score of 500 or less 


== Code here ==
SELECT *
FROM customers
WHERE score <= 500


== COMPARISON OPERATOR PART LESSON END HERE==

