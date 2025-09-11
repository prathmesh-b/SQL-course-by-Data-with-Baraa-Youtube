/* tut13 part of INSERT

Lesson - INSERT  using SELECT

so previously we entering values in table by manually typing INSERT command

NOW THIS TIME We can insert data from another table to new table in which
we wanted 

eg SOURCE TABLE which is already available table with data
we want to move data from this to new table

TARGET TABLE here we want data from SOURCE TABLE 

-- SO how we going to do 
1st write SELECT Query for SOURCE TABLE like

-CODE-
SELECT
  FROM
  WHERE 

so result will come then we will transfer that result data to TARGET TABLE

*/


/* -- TASK --
Copy data from 'customers' table into 'persons'

let's solve
STEP 1) here SOURCE TABLE is 'customers table'
TARGET TABLE is 'persons'

you have to keep in mind structure of target table like data we wanted
and write query


-code here-
SELECT *
FROM customers


output so we have table with columns
id (primary key, int, not null)
first_name
country
score

so we want to modify table acc to TARGET table 'persons'
in persons table here columns
id(pk, int, not null)
person_name (varchar(50),null)
birth_date (date,null)
phone (varchar(15),not null)

here is code for SOURCE table to modify acc to target

   --code--
SELECT 
	id,             -- we have id column same in target
	first_name,     -- we have same as person_name column in TARGET
	NULL,           -- we use NULL because don't have birth_date column in SOURCE Table 'customers'
	'Unkown'        -- here 'Unkown' is use because we don't have email and can't be NULL because in SOURCE it has mentioned not null so to tackle this we use 'Unkown' we can insert fake data name 'unkown' in column
FROM customers
   --code--

if execute code you will see ?column? as column name of last 2 that not worry unless value data type and constraint is matching of  from SOURCE TABLE to TARGET TABLE


STEP 2) So now we want to take this result and INSERT data from SOURCE to TARGET

--code--

INSERT INTO persons (id, person_name, birth_date, email)
SELECT
	id,
	first_name,
	NULL,
	'Unknown'
FROM customers

--checking here output whether data transfered--

SELECT *
FROM persons

yes data has transfered from SOURCE TABLE customers to TARGET persons table

