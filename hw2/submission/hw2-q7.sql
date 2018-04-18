-- CSE 414 HW 2 Question 7
-- Chongyi Xu, 1531273
-- Section AD

-- Find the total capacity of all direct flights that fly between 
-- Seattle and San Francisco, CA on July 10th. 
SELECT SUM(f.capacity) AS capacity
FROM FLIGHTS AS f, CARRIERS AS c, MONTHS AS m
WHERE f.carrier_id=c.cid AND f.month_id=m.mid AND
((f.origin_city='Seattle WA' AND f.dest_city='San Francisco CA') OR 
(f.origin_city='San Francisco CA' AND f.dest_city='Seattle WA')) AND
m.month='July' AND f.day_of_month=10;
