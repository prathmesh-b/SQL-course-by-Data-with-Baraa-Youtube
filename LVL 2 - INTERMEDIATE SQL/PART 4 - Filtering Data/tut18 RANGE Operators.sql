/*
RANGE OPERATOR
- BETWEEN
Check if a value is within a range

so here range concept is

  Lower               Upper
  boundary            boundary 
         
         BETWEEN
------|---------------|------
FALSE       TRUE         FALSE

so data which false between boundary will be true and outside boundary will be false

so here
           BETWEEN
------|----------------|-----
     100     200          500

so here lower boundary is 100 and Upper is 500
in BETWEEN is 200 which is true and if score = 100 or score = 500 it still true

== code syntax ==
WHERE variable BETWEEN lower boundary AND upper boundary


== TASK 1 ==

Retrieve all customers whose score falls in the range  between 100 and 500

(prefer this method)
SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500 

or diff way to solve below

SELECT *
FROM customers
WHERE score >= 100 AND score <= 500

both give same answr

