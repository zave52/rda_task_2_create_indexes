# Optimizing database by creating indexes

Now, when you know how to build a database, let's learn how to optimise read (and search) operations on it. 

In this task you will need to create some indexes for a online shop database. The shop database is called "ShopDB", and it has the following tables:
    - "Products", which has the following columns: ID, Name, Description, Price, WarehouseAmount. 
    - "Customers", which has the following columns: ID, FirstName, LastName, Email, Address. 
    - "Orders", which has the following columtns: ID, CustomerID, Date. 
    - "OrderItems", which has the following columns: ID, OrderID, ProductID.

The "ShopDB" is used by the web application. Each time web application needs to read data, which is stored in the database - it runs a SQL query against the database server. 

## Online shop usage scenarios 
- the compamy, which owns a shop, does not invest in marketing a lot. The shop is used by the existing customers base, which is not expanding very rapidly over the time. 
- in order to use the shop, customers need to log in, entering their Email. When customer logs in - the application checks the "Customers" table for the Email user entered, and if it's there - user will be able to login and create new orders. 

- each day, online shop receives at least 100 new orders. 
- each time customer opens the online shop page - he lists all the available products. When user is interested in any particular product - he search for the product by it's Name. 
- products are being updated in the database once a year. 

## Task
#### Prerequisites
- Install and confiture a MySQL database server on a Virtual Machine, connect to it with the MySQL client
- Fork this repository

#### Requirements
In this task you need to analyse the online shop usage, and based on that, create indexes for some of the database tables. 

1. Connect to your database server, and create the "ShopDB" database using SQL script in the file "create-database.sql".
2. Analyse the [usage scenario above](## Online shop usage scenarios), and create indexes for the tables and columns, which, in your opinion require that. Save code for creating indexes into the file "task.sql" and submit the solution for a review. Indexes should be named same as the columns, for which you are creating the indexes. 

#### How test yourself 
Just in case you want to test your script on your own DB before submitting a PR, you can do it by performing the following actions: 
1. Run the script you wrote in the "task.sql" against your database server 
2. Make sure all tables in the database it created are empty 
3. Run script "test.sql" against your database. If the sctip execution finished without errors - you are ready to submit a PR. 
