-- CSE 414 HW3
-- Chongyi Xu, 1531273
-- Section AD

-- Question 5:
-- List all cities that cannot be reached from Seattle through a direct nor with one stop.
SELECT DISTINCT f.dest_city
FROM FLIGHTS AS f
WHERE f.dest_city NOT IN -- direct
(SELECT d.dest_city
 FROM FLIGHTS AS d
 WHERE d.origin_city='Seattle WA')
AND f.dest_city NOT IN -- one stop
(SELECT f2.dest_city
 FROM FLIGHTS AS f1, FLIGHTS AS f2
 WHERE f1.dest_city=f2.origin_city
 AND f1.origin_city='Seattle WA'
 AND f2.dest_city!='Seattle WA')
AND f.dest_city!='Seattle WA';

 -- The output has 3 rows with a runtime of 4 min 58 sec.