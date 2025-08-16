/* ORDER BY - SQL query (Sort your data)
you can sort into two way ASC (ascending Lowest to Highest), DESC(descending Highest to Lowest)

DESC means Highest to lowest order
ASC means Lowest to Highest order

SQL Syntax

SELECT *
FROM Table name
ORDER BY column_name (specify ASC or DESC for clairty) if you don't specify then by default it is ASC

*/

-- Task 1 = reterive all customers and sort the results by the highest score first

/*
SELECT * 
 FROM customers
 ORDER BY score DESC;
*/

-- Task 2 = reterive all customers and sort the results by the DESEC lowest score first

SELECT * 
 FROM customers
 ORDER BY score ASC;