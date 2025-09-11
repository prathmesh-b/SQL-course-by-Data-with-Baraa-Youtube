/* tut12
-INSERT using values
here we can add new values rows to table of database

we can insert the values manually by single values inside target table. it will be inserted as new rows to the table

syntax for INSERT

INSERT INTO table_name  (column1, column2, column3,...)
VALUES (value1, value2, value3, ...)

optional: here inside column code (column1, column2) 
if here no column is specificied SQL expects value for all columns

==RULE== here Match the number of columns and value

*/

INSERT INTO customers (id, first_name, country, score)
VALUES (6, 'Anna', 'USA', Null),

-- so here id column get 6 value, first_name column = Anna and Null value means we don't know/ nothing/ empty
      (7, 'Nancy', Null, 109)
	  (8, 'Andyu', 'Denmark', 203)

-- if you don't know value Null can be inserted but sometimes some data type not accept
      --(Null, 'Andrew', 'Denmark', 203)
--OUTPUT OF above sql query
-- here error showing can't insert Null in first column because primary key want something and can't be empty

/* run this code only
SELECT * 
 FROM customers
 */
/* RULES===
Matching data types,column counts & constraints



-- you can insert values with column name check below but always list columns 
for clairity and maintainability

INSERT INTO customers
	VALUES
	(9, 'Andreas', 'Germany', NULL)

next sub lesson - 
Columns not included in INSERT become NULL (unless a default or constraint exists)

suppose we choose only two column to insert the value

INSERT INTO customers(id, first_name)
VALUES (10, 'Sahra')

values will be inserted into columns mentioned and in other NULL will be stored




*/