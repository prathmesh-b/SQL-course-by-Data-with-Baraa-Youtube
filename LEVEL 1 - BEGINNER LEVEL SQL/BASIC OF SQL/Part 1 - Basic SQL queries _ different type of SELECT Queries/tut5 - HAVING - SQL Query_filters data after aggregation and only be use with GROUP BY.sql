/* tut5 - HAVING - SQL Query
HAVING - Filters Data after (GROUPING ACC TO SOME COMMON THING)Aggregation and only be used with GROUP BY

Isn't WHERE Clause also work same? but WHERE is being used to filter or sort data
before doing AGGREGATION

HAVING is used after filter and aggergation

TASK == Find the average score for each country considering only customers
with a score not equal to 0 And return only those countries with an average score
greater than 430

*/

SELECT  
country, 
AVG(score)AS avg_score
FROM customers
WHERE score !=0
GROUP BY country
HAVING AVG(score) > 430
 
