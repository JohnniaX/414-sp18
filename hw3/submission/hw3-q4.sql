-- CSE 414 HW3
-- Chongyi Xu, 1531273
-- Section AD

-- Question 4:
-- List all cities that cannot be reached from Seattle through a direct flight but can be reached with one stop.
SELECT f2.dest_city AS city
FROM FLIGHTS f1,
(SELECT f.origin_city, f.dest_city
 FROM FLIGHTS f
 WHERE f.dest_city!='Seattle WA'
 AND f.dest_city NOT IN
 (SELECT ff.dest_city FROM FLIGHTS AS ff
  WHERE ff.origin_city='Seattle WA')
 GROUP BY f.origin_city, f.dest_city) AS f2
WHERE f1.dest_city=f2.origin_city
AND f1.origin_city='Seattle WA'
GROUP BY f2.dest_city;

-- The output has 256 rows with a runtime of 19 sec.