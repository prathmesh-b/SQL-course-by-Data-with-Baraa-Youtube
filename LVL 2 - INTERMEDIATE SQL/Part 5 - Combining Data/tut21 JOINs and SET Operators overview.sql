/*
tut21 JOINs and SET Operators overview visual

Core of SQL impt concept

so here is TABLE A and TABLE B
            \           /
			 \          /
			   Combine ?
			   want to combine
			   /     \
			  /       \
			 Rows      Columns
              |          |
			  |          |
			SET        Join
           Operators   
			  For combining Columns we use JOINS 
			  For combining Rows we use SET

There are different 
types of JOINs

 - Inner Join
 - Full Join
 - Left Join
 - Right Join
 
There are different 
types of SET

 - UNION
 - UNION ALL
 - EXCEPT (Minus)
 - INTERSECT 

for each methods there are different rules
In order to join two diff tables for JOINs we have to define key columns between two tables

In order to combine two tables using SET operators we need exact same column

