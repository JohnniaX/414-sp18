-- CSE 414 HW3
-- Chongyi Xu, 1531273
-- Section AD

-- Question 7:
-- List the names of carriers that operate flights from Seattle to San Francisco, CA.
SELECT DISTINCT c.name FROM CARRIERS AS c, FLIGHTS AS f
WHERE f.carrier_id=c.cid
AND f.origin_city='Seattle WA' AND f.dest_city='San Francisco CA';

-- The output has 4 rows with a runtime of 4 sec.