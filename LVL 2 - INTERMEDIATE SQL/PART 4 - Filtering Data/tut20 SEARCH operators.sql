/* tut20 
SEARCH Operator

TRICKY CONCEPT
(watch video to understand)

- LIKE 
(Search for pattern in text)

pattern to search 
we use 1) % is used to search anything  from no character , one character, or many charcters
       2) _ if underscore is used we search specific exactly character or 1

	   % is being used way more it is famous

example here 

1)    M%
M =	character we want to search and % = anything after M
so output = Maria  

here M = is character with matches
   aria = anything

Output Ma 
Output Emma not correct and will not be shown by SQL
E is at starting


2)  %in
   % = anything  before in

eg Martin 
mar = anything  and also it is before in

Vin = accepted 
in = accepted 
Jashmine = rejected ne is last two characters we want in and before that anything

3)   %r%

you defining is there any r anywhere whether at begining or end or middle the condition is fulfilled
eg Maria 
r is between Ma ia = accepted (means output will be shown and correct)
Peter = accepted
Rayn = accepted
R = accepted
Alice = (rejected)

4)   __b%
	 || |
     12 Any
here there must be something at 1st position, 2nd postion then character b and 4th postion any

eg Albert 
   || |
   12 Any (it fulfills the condition)

   Rob
   || |
   12 Any (it fulfills the condition)

   Abel
   || |
   12 Any (it not fulfills the condition because 3rd charact is not b it's e)

   An_
   || |
   12 Any (it not fulfills the condition because 3rd charact is not b it's empty)


== TASK == 
Find all customers whose first name starts with 'M'

SELECT *
FROM customers
WHERE first_name LIKE 'M%'


here first_name is column name

== TASK 2 ==
Find all customers whose first name ends with 'n'

SELECT *
FROM customers
WHERE first_name LIKE '%n' -- here we want last character end with n in first_name column


== TASK 3==
Find all customers whose first name contains with 'r'

SELECT *
FROM customers
WHERE first_name LIKE '%r%'

this is used a lot to find value in your database



== TASK 4==
Find all customers whose first name has 'r' in the third position

SELECT *
FROM customers
WHERE first_name LIKE '__r%'


== end here==