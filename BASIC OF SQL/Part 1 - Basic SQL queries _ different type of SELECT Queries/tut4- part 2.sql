/* (Nested) ORDER BY 
you can sort your data by mutliple coulmns that's why called nested
it comes handly when you sorted by one condition but to further sort it becaues of repetion 


*/

-- Retrieve all customers and sort the results by the country and then by the highest score

SELECT *
FROM customers
ORDER BY country ASC, score DESC
-- above country column has more priorty then score

/* Column order in ORDER BY is crucial, as sorting is sequential */
	  