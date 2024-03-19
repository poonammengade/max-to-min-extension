# max-to-min-extension
The `max_to_min` aggregate function is a custom PostgreSQL function that returns the maximum and minimum values of an integer column in the format "max -> min".



**INSTALLATION**

**Requirement:**
  * PostgreSQL installed

-- Copy the Control file and SQL file to the postgres extension folder.

-- After completing this step, Log into PostgreSQL and run the following command `CREATE EXTENSION max_to_min_agg;` 

-- Once the extension is installed one can utilize the `max_to_min` aggregate function in their queries.




**NOTES**

* This function assumes the input column is of type INT. Modify the function accordingly if you're working with a different data type.

* Ensure that you have the necessary permissions to create functions in your database.

* This README provides a basic example. Please adapt the function according to your specific use case and database environment.
