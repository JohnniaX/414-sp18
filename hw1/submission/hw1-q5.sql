-- CSE 414 HW 1 Question 5
-- Chongyi Xu, 1531273
-- Section AD

-- Write a SQL query that returns only the name and distance of all 
-- restaurants within and including 20 minutes of your house. The query 
-- should list the restaurants in alphabetical order of names.
SELECT R.RestaurantName, R.Distance FROM MyRestaurants AS R
    WHERE R.Distance <= 20
    ORDER BY R.RestaurantName ASC;