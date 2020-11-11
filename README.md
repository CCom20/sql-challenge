# Employee Analysis
This project looks at employee data, including date of hire and salaries, through the use of a SQL database. There is an ERD provided for reference concerning primary and foreign keys.

## Creating Tables
Table creation is straight-forward, and it follows dependancies. In order: 
1. Departments
2. Titles
3. Employees
4. Department Employee
5. Department Manager
6. Salaries
This order was followed so that the code could run without specific selections in order to create the tables. It also made it easier to import the data knowing the order of creation and dependancies.

## Creating Views and Queries
The queries use `JOIN` instead of subqueries, mainly because joins are easier to work with in this instance, and the code seems to be a little shorter. 

Rather than simply writing the queries, I utilized `CREATE VIEW` so they could be referenced in SQL queries from Jupyter Notebook using Python. This was helpful when querying from Jupyter Notebook in order to create charts with matplotlib / pandas. I simply wrote a view then referenced the view in the engine. 

With some of the queries, I used `ORDER BY` out of my own preference to order the data when looking at it. 