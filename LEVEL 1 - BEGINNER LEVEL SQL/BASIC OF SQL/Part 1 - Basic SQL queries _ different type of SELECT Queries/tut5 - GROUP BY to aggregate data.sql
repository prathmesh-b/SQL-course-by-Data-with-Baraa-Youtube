/* GROUP BY 
to aggregate your data 
aggregate means - a whole formed by combining several separate elements

GROUP BY - Combines rows with the Same value
Aggregates a column By another Column
eg Total score by country 
Germany - 350             
Germany - 500            Germany = 350+500 = 850 then Germany value change to 850
this means we grouped values of one country into separate and single instead of two
               
*/

-- Task 1 -find the total score for each country

-- AS (ALIAS) shorthand name (Label) assigned to a column or table in a query
-- this AS will only work inside the query will not change into actual table or data
SELECT 
   country,
   SUM(score) AS total_score 
FROM customers
GROUP BY country;

/* -- GROUP BY RULE - All columns in the SELECT must be either aggregated or included in GROUP BY
so if you want to mention first_name column then it will through error and above is 

*/

/* SELECT 
   country,
   first_name,
   SUM(score) AS total_score 
FROM customers
GROUP BY country; */

/* here comes error  ERROR:  column "customers.first_name" must appear in the GROUP BY clause or be used in an aggregate function
LINE 30:    first_name, 

to solve this add it to GROUP BY country, first_name;

You have to mention column in GROUP BY also if you use with SELECT with
*/

/* 
SELECT 
   country,
   first_name,
   SUM(score) AS total_score 
FROM customers
GROUP BY country, first_name;
*/


--issue comes is we not getting group by value using country and sum score to solve this
-- remove first_name from GROUP BY and SELECT also

/* -- GROUP BY RULE 2 - The Result of GROUP BY determined by the unique values of the grouped columns

*/
SELECT 
   country,

   SUM(score) AS total_score 
FROM customers
GROUP BY country ;

-- 