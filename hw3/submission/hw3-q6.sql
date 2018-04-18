-- CSE 414 HW3
-- Chongyi Xu, 1531273
-- Section AD

-- Question 6:
-- List the names of carriers that operate flights from Seattle to San Francisco, CA.
SELECT DISTINCT c.name FROM CARRIERS AS c,
(SELECT f.carrier_id FROM FLIGHTS AS f
 WHERE f.origin_city='Seattle WA'
 AND f.dest_city='San Francisco CA') AS ff
WHERE ff.carrier_id=c.cid;

-- The output has 4 rows with a runtime of 3 sec.