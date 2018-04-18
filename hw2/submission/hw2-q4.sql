-- CSE 414 HW 2 Question 4
-- Chongyi Xu, 1531273
-- Section AD

-- Find the names of all airlines that ever flew more than 1000 flights 
-- in one day (i.e., a specific day/month, but not any 24-hour period). 
-- Return only the names of the airlines. Do not return any duplicates 
-- (i.e., airlines with the exact same name).    
SELECT DISTINCT c.name AS Name_of_Airlines
FROM FLIGHTS AS f, CARRIERS AS c
WHERE f.carrier_id=c.cid
GROUP BY c.name, f.month_id, f.day_of_month
HAVING COUNT(*) > 1000;

-- Query result has 12 rows.