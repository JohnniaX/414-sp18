-- CSE 414 HW 1 Question 6
-- Chongyi Xu, 1531273
-- Section AD

-- Write a SQL query that returns all restaurants that you like, but have not visited 
-- since more than 3 months ago.
SELECT R.DateLastVisit AS D FROM MyRestaurants AS R
    WHERE date(D) < date('now', '-3 month')
    AND R.LikeOrNot = 1;