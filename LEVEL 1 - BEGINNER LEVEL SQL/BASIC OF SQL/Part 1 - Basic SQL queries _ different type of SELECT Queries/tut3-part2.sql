/* WHERE sql query is use to filter the data with condition

Task 1 - retrive customers with a score not equal to 0.
the task means i don't want to see the all the customers but only customers who fulfills the condition,

*/

/* Task 1 code (uncomment the code and check for result)
SELECT * 
 FROM  customers
 WHERE score !=0;

*/

/* Task 2 - Reterive customers from Germany only

*/

SELECT *
 FROM customers
 WHERE country = 'Germany'; -- here for value single ' ' used instead of " "

 -- now if i want to show coulmn first_name and country only
 SELECT first_name, country
  FROM customers
  WHERE country = 'Germany';
  
 
