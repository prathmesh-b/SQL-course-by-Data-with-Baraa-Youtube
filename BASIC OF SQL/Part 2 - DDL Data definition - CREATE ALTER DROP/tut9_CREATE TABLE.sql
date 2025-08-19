/* tut9 - 
CREATE ALTER DROP this commands used for database

let start with
CREATE command is used to create new table in freshly created database

A simplified basic syntax is as follows:
Code

CREATE TABLE [IF NOT EXISTS] table_name (
    column1_name datatype [column_constraint],
    column2_name datatype [column_constraint],
    -- ...
    [table_constraint]
);
Explanation of Components:
CREATE TABLE: This keyword initiates the table creation command.
[IF NOT EXISTS]: This optional clause prevents an error if a table with the specified table_name already exists. If the table exists, a notice is returned, and the command is skipped.
table_name: This is the desired name for the new table. It must be unique within the database or schema.
column_name: This specifies the name of a column within the table.
datatype: This defines the type of data that can be stored in the column (e.g., INT, VARCHAR(100), DATE, SERIAL).
[column_constraint]: These are optional rules applied to individual columns, such as NOT NULL, UNIQUE, PRIMARY KEY, or DEFAULT value.
[table_constraint]: These are optional rules that can apply across multiple columns or the entire table, such as PRIMARY KEY (column1, column2), FOREIGN KEY, or CHECK (condition)

*/

-- Task 1 - create a new table called persons with columns: id, person_name, birth_date, and phone

CREATE TABLE persons (
id INT NOT NULL,   -- columnname, datatype, null or not null we put not null where we want information and it can't be empty
person_name VARCHAR(50) NOT NULL,
birth_date DATE,
phone VARCHAR(15) NOT NULL,
CONSTRAINT pk_persons PRIMARY KEY (id)
-- CONSTRAINT pk_persons( we created primary key which helps to connect this table to other) using PRIMARY KEY (id) column
)

/* we are now saving this code as a script so that if something happened the original code
we created is saved if we added some data into it
