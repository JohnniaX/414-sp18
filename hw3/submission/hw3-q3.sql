-- CSE 414 HW3
-- Chongyi Xu, 1531273
-- Section AD

-- Question 3:
-- For each origin city, find the percentage of departing flights shorter than 3 hours.
SELECT f.origin_city, m.count*1.0/COUNT(*) AS percentage
FROM FLIGHTS AS f
LEFT JOIN (SELECT ff.origin_city, COUNT(*) AS count FROM FLIGHTS AS ff
 WHERE ff.actual_time < 180.0 OR (ff.actual_time IS NULL)
 GROUP BY ff.origin_city) AS m
ON f.origin_city=m.origin_city
GROUP BY f.origin_city, m.count
ORDER BY percentage;

-- The output has 327 rows and with a run time of 23 sec.