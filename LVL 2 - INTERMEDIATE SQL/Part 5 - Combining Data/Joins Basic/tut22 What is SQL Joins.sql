/*

tut22 What is SQL Joins & why we use

when we want to join two tables we do with id column or primary key which is same in both tables

definition - SQL JOIN is a command used to combine rows from  two or more tables
in a relational database based on a related column between them

In simple it's how you link separate pieces of data (stored in different  tables)
back together to get a complete picture.


-- When to use JOIN/ Why we use JOIN --
1) Recombine the data
in real business sometimes data of customer is present in different tables
eg customers table
separate table for addresses of customer, reviews, orders etc like that

so how about i need a complete big picture all data in one table 

so we connect this 4 tables customers, addresses, reviews, orders using JOINS
we combine all tables into 1

2) Data Enrichment "Getting Extra Data"

you already have customers - master table
but you want extra info to add zip codes so we want to connect Reference Table (Zip codes)


3) Check for Existence  "Filtering"
we sometimes want to check data from master table say customers with lookup table Orders to check which highest order or no orders placed

Customers = Master Table
Orders = Lookup Table  for Filtering

and we decided to remove data from master table ( Not about combining)


