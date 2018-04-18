-- CSE 414 HW 1 Question 7
-- Chongyi Xu, 1531273
-- Section AD

-- Write a SQL query that returns all restaurants that are within and 
-- including 10 mins from your house.
SELECT * FROM MyRestaurants AS R
    WHERE R.Distance <= 10;