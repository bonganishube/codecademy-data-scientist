-- SQLite
-- 1. Select the location and average number of employees from 'startups'
--    Group by location and filter to show only those with an average greater than 500
SELECT location, AVG(employees)
FROM startups
GROUP BY 1
HAVING AVG(employees) > 500;

-- 2. Select all columns from the 'startups' table
SELECT *
FROM startups;

-- 3. Count the total number of entries (startups) in the 'startups' table
SELECT COUNT(*) 
FROM startups;

-- 4. Calculate the total valuation of all startups
SELECT SUM(valuation)
FROM startups;

-- 5. Find the maximum amount raised by startups in the 'Seed' stage
SELECT MAX(raised) 
FROM startups
WHERE stage = 'Seed';

-- 6. Find the earliest founding year of any startup in the table
SELECT MIN(founded)
FROM startups;

-- 7. Calculate the average valuation of all startups
SELECT AVG(valuation)
FROM startups;

-- 8. Calculate the average valuation for each category of startups
SELECT category, AVG(valuations)
FROM startups
GROUP BY category;

-- 9. Calculate the average valuation for each category and round it to 2 decimal places
SELECT category, ROUND(AVG(valuations), 2)
FROM startups
GROUP BY category;

-- 10. Calculate the average valuation for each category, round to 2 decimal places,
--     and order the results in descending order of average valuation
SELECT category, ROUND(AVG(valuations), 2)
FROM startups
GROUP BY category
ORDER BY 2 DESC;

-- 11. Count the number of startups in each category
SELECT category, COUNT(*)
FROM startups
GROUP BY category;

-- 12. Count the number of startups in each category, filtering to show only categories with more than 3 startups
SELECT category, COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT(*) > 3;

-- 13. Calculate the average number of employees for each location
SELECT location, AVG(employees)
FROM startups
GROUP BY location;

-- 14. Calculate the average number of employees for each location, filtering to show only locations with an average greater than 500
SELECT location, AVG(employees)
FROM startups
GROUP BY location
HAVING AVG(employees) > 500;
