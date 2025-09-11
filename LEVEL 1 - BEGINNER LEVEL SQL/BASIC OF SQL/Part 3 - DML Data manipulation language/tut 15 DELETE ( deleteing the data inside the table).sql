/*

--TIP - if you reading this lesson only execute specific query
don't execute whole code 

SPECIFICALLY FOR this lesson of DELETE ALWAYS TEST USING 'WHERE'
BEFORE EXECUTING 'DELETE' Command


---------------=====---- tut 15 DELETE  ---- === ----

to remove the exisitng row from the table

== SYNTAX ==

DELETE FROM table_name
WHERE <condition>

we are using WHERE always because to not 
delete entire rows data unintentionally instead required one

== syntax end==


== TASK 1 ==

Delet all customers with an ID greater than 5

== CODE HERE ==

/* DELETE FROM customers -- one of most riskest command in SQL if execute all rows 
                            data will be deleted, to protect use WHERE

DELETE FROM customers
WHERE id > 5

== BEST Practice :- before running DELETE check with SELECT 
before running DELETE to avoid deleting the wrong data 

SELECT * 
FROM customers
WHERE id > 5

ok now execute data and it will delete < 5 id's 

after executing DELETE FROM customers
                WHERE id > 5
Output shown inside " ":-
" DELETE 4

Query returned successfully in 164 msec."

Now let's check which customers left

SELECT * FROM customers


== TASK 2 ==

Delete all data from the persons table

We don't want to DELETE the Table but data inside the table

== CODE HERE ==

DELETE FROM persons

this above code going to drop the data from the persons table

but in SQL we have intresting command if you want to delete everything
we have TRUNCATE

TRUNCATE :- Clears the whole table at once without checking or logging


also DELETE command is very slow to run instead TRUNCATE 
so instead of this code

DELETE FROM persons

use 
TRUNCATE TABLE persons


== LESSON END HERE ==





so till now CONGRATS :) We have completed BEGINNER LEVEL SQL now moving forward INTERMEDIATE LEVEL

