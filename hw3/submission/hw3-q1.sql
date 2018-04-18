-- CSE 414 HW3
-- Chongyi Xu, 1531273
-- Section AD

-- Question 1:
-- Find the destination city with the longest direct flight for each origin city
SELECT DISTINCT f.origin_city, f.dest_city, f.actual_time AS time
FROM FLIGHTS AS f, 
(SELECT ff.origin_city, max(ff.actual_time) AS max FROM FLIGHTS AS ff
GROUP BY ff.origin_city) AS m
WHERE f.origin_city=m.origin_city AND f.actual_time=m.max
ORDER BY origin_city, dest_city;

-- The output has 334 rows with a runtime of 14 sec