/* tut6 - DISTINCT use with SELECT query to remove duplicates value 
It makes sure value only appears once 

Syntax here

SELECT DISTINCT
country
FROM customers; so here only country column will be seen and also in that 
one time value appears it will not be repeated

Task == Return unique list of all countries 

*/

SELECT DISTINCT
country
FROM customers;

/* BAD HABIT with DISTINCT - Don't use DISTINCT unless it is necessary because 
it takes time to load and it slow down SQL query process
*/
