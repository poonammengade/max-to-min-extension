# max-to-min-extension
The `max_to_min` aggregate function is a custom PostgreSQL function that returns the maximum and minimum values of an integer column in the format "max -> min".



**INSTALLATION**

**Requirement:**
  * PostgreSQL installed

-- Copy the Control file and SQL file to the postgres extension folder.

-- After completing above step, Log into PostgreSQL and run the following command to install the extension:

`CREATE EXTENSION max_to_min;` 

-- Once the extension is installed one can utilize the `max_to_min` aggregate function in their queries.

**For example:**

`SELECT max_to_min(val) FROM (VALUES(5),(3),(6),(7),(9),(10),(7)) t(val);`



**NOTES**

* This function assumes the input column is of type INT. Modify the function accordingly if you're working with a different data type.

* Ensure that you have the necessary permissions to create functions in your database.

* This README provides a basic example. Please adapt the function according to your specific use case and database environment.
