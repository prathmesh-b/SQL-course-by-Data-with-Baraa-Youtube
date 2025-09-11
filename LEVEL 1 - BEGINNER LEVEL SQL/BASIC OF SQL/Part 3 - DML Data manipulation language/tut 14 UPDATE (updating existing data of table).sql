/*

tut 14 UPDATE 
it means i want to change content of already existing row


== UPDATE SYNTAX == 

UPDATE table_name
	SET column_1 = value 1,
	    column_2 = value 2,
	WHERE <condition>

NOTE;- Always use WHERE to avoid UPDATING all rows unintentionally
because we want to change specific data



== TASK ==

Change the score of customer with ID 6 to 0

== Code here ==

UPDATE customers
	SET score = 0
	WHERE id = 6

	-- This starting CODE DON'T EXECUTE

UPDATE customers
	SET score = 0
	
very caution DON'T EXECUTE ABOVE Query without WHERE , 
or all rows of score column will data  will become 0 --

== above CODE Continuted == 

	SELECT *        -- Check with SELECT before running UPDATE to avoid 
	FROM customers                 --updating the wrong data
	WHERE id = 6

	-- after getting sure relevant data is shown via SELECT then
	   comment SELECT code and execute UPDATE above code


so after overall the data has been updated in id =6 of Anna
here score changed from NULL to 0
== Task ended ==



== TASK 2 ==

Change the score of customer with ID 10 to 0 and upate the country to 'UK'

== CODE here ==

UPDATE customers
	SET score = 0,
		country = 'UK'
	WHERE id = 10

	SELECT *        --  execute this specific Check with SELECT before running UPDATE to avoid 
	FROM customers                 --updating the wrong data
	WHERE id = 10

== TASK end ==


== TASK 3 ==

Update all customers with a NULL score by setting their score to 0

-- so here we want to update subset of customers at large scale instead
of mannually changing one by one

we will specify specific condition and target multiple condition

== CODE HERE ==

UPDATE customers
	SET score = 0
	WHERE score IS NULL  -- we can't write = NULL so IS NULL used

let see existing data before test above code of NULL

SELECT *
FROM customers
WHERE score IS NULL

so 1 row affected updated

== Task == 

update rows where country is NULL of id

== CODE HERE == 

UPDATE customers
	SET country = 'INDIA'
	WHERE country IS NULL

let test see existing data before execute code of NULL

SELECT *
FROM customers
WHERE country IS NULL