/* tut10 - ALTER TABLE 
DATA DEFINITION LANGUAGE
this is use to alter/change the table suppose adding new column

Task== add new column to persons table name it email

*/

/* code --
ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL

*/
-- to check whether it add run below but only when select this and execute this only
-- SELECT * FROM persons

-- TIP - New column by default added to last
/* but if you want to add email in middle after birth_date
sadly it can't be done, You have to delete the table and create in order 
u wanted */



-- new sub concept 
/* REMOVE phone column from the table

*/

ALTER TABLE persons
DROP COLUMN phone

-- SELECT * FROM persons   execute this code only to check 