# Optimizing the Database by Creating Indexes


Now, when you know how to build a database, let's learn how to optimize its read (and search) operations. In this task, you need to create some indexes for a `ShopDB` online shop database, which has the following tables:


    - `Products`, which has the following columns: `ID`, `Name`, `Description`, `Price`, and `WarehouseAmount`. 
    - `Customers`, which has the following columns: `ID`, `FirstName`, `LastName`, `Email`, and `Address`. 
    - `Orders`, which has the following columns: `ID`, `CustomerID`, and `Date`.
    - `OrderItems`, which has the following columns: `ID`, `OrderID`, and `ProductID`.


The `ShopDB` is used by the web application. Each time a web application needs to read data stored in the database, it runs an SQL query on the database server. 


## Online Shop Usage Scenarios


- A company that owns a shop does not invest much in marketing. The shop is used by the existing customer base, which is not rapidly expanding. 
- To use the shop, customers need to log in, entering their email. When a customer logs in, the application checks the `Customers` table for the `Email` user entered; if it's there, the user can log in and create new orders. 
- Each day, the online shop receives at least 100 new orders. 
- Each time a customer opens the online shop page, they list all the available products. Customers who are interested in any particular product search for it by its `Name`. 
- Products are updated in the database once a year. 


## Task


### Prerequisites


1. Install and configure a MySQL database server on a Virtual Machine, connect to it with the MySQL client.
2. Fork this repository.


### Requirements


In this task, you need to analyze the online shop usage and, based on that, create indexes for some of the database tables: 


1. Connect to your database server and create the `ShopDB` database using the SQL script in the `create-database.sql` file.
2. Analyze the [usage scenario above](##online-shop-usage-scenarios) and create indexes for the tables and columns, which, in your opinion, require that. Save the code for creating indexes into the `task.sql` file and submit the solution for review. Indexes should be named the same as the columns for which you create the indexes. 


### How to Test Yourself


Just in case you want to test your script on your database before submitting a pull request, you can do it by performing the following actions: 


1. Run the script you wrote in the `task.sql` on your database server.
2. Make sure all tables in the database are empty.
3. Run the `test.sql` script on your database. If the script execution is finished without errors, you are ready to submit a pull request. 
