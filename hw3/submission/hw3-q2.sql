-- CSE 414 HW3
-- Chongyi Xu, 1531273
-- Section AD

-- Question 2:
-- Find alll origin cities that only serve flights shorter than 3 hours.
SELECT DISTINCT f.origin_city AS city
FROM FLIGHTS AS f, 
(SELECT ff.origin_city, MAX(ff.actual_time) AS max FROM FLIGHTS AS ff GROUP BY ff.origin_city) AS m
WHERE f.origin_city=m.origin_city AND f.actual_time=m.max AND m.max < 3*60
ORDER BY f.origin_city;

-- Output has 109 rows with a runtime of 14 sec.