-- CSE 414 HW 1 Question 4
-- Chongyi Xu, 1531273
-- Section AD

-- Write a SQL query that returns all restaurants in your table. Experiment with a 
-- few of SQLite's output formats and show the command you use to format the output 
-- along with your query (do not include the query output):

-- print the results in comma-separated form
.mode csv

-- print the results in list form, delimited by "|"
.mode list

-- print the results in column form, and make each column have width 15
.mode column
.width 15 15 15 15 15

-- for each of the formats above, show the command you use to print the column headers 
-- with the results
.header on

SELECT * FROM MyRestaurants;