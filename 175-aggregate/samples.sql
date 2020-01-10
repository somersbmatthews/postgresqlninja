-- AGGREGATES
-- SELECT COUNT(*) FROM people;
-- SELECT COUNT(pid) FROM people;
-- SELECT COUNT(*) AS "OR Pop" FROM people WHERE pstate = 'OR';
-- SELECT SUM(ppoints) FROM people;
-- SELECT AVG(ppoints) FROM people;
-- SELECT MAX(ppoints) FROM people;
-- SELECT MIN(ppoints) FROM people;
-- SELECT MIN(pdob) FROM people;
-- SELECT MAX(pdob) FROM people;
-- ... just fyi here ...
-- SELECT pfirstname, plastname, ppoints FROM people ORDER BY ppoints DESC LIMIT 10;

-- DISTINCT COUNT
-- SELECT COUNT(DISTINCT pcity) FROM people;
-- Select DISTINCT pcity FROM people;

-- SUBQUERY VALUE
-- SELECT pfirstname, plastname, 
-- (SELECT COUNT(*) FROM lists WHERE people.pid = lists.pid) AS AMT
-- FROM people ORDER BY AMT DESC;
-- ... just fyi here ...
-- SELECT pfirstname, plastname, lid, liid FROM
-- people JOIN lists USING (pid)
-- JOIN listitems USING (lid);
-- ... just fyi here ...
-- SELECT pfirstname, plastname, lid, liid, iname FROM
-- people JOIN lists USING (pid)
-- JOIN listitems USING (lid)
-- JOIN items USING (iid);

-- SUBQUERY FILTER
-- SELECT pfirstname, plastname, ppoints FROM people WHERE ppoints = (SELECT MAX(ppoints) FROM people);
-- SELECT pfirstname, plastname, ppoints FROM people WHERE ppoints > (SELECT AVG(ppoints) FROM people);
-- SELECT COUNT(*) FROM people WHERE ppoints > (SELECT AVG(ppoints) FROM people);