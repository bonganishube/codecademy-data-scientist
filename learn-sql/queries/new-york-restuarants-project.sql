-- SQLite
-- 1. Select all columns from the 'nomnom' table
SELECT *
FROM nomnom;

-- 2. Select distinct neighborhoods from the 'nomnon' table (note: should be 'nomnom')
SELECT DISTINCT neighborhood 
FROM nomnon;  -- Typo in table name

-- 3. Repeat of the previous query, selecting distinct neighborhoods from 'nomnon' (again, should be 'nomnom')
SELECT DISTINCT neighborhood 
FROM nomnon;  -- Typo in table name

-- 4. Select all columns from 'nomnom' where the cuisine is 'Chinese'
SELECT *
FROM nomnom
WHERE cuisine = 'Chinese';

-- 5. Select all columns from 'nomnom' where the review score is 4 or higher
SELECT *
FROM nomnom
WHERE review >= 4;

-- 6. Select all columns from 'nomnom' where the cuisine is Italian or higher and the price is '$$$'
SELECT *
FROM nomnom
WHERE cuisine >= 'Italian' AND price = '$$$';  -- Note: 'cuisine' comparison may not work as expected

-- 7. Select all columns from 'nomnom' where the name contains 'meatball'
SELECT *
FROM nomnom
WHERE name LIKE '%meatball%';

-- 8. Select all columns from 'nomnom' where the neighborhood is either Midtown, Downtown, or Chinatown
SELECT *
FROM nomnom
WHERE neighborhood = 'Midtown' OR 
      neighborhood = 'Downtown' OR
      neighborhood = 'Chinatown';

-- 9. Select all columns from 'nomnom' where the health rating is NULL
SELECT *
FROM nomnom
WHERE health IS NULL;

-- 10. Select all columns from 'nomnon' (should be 'nomnom') ordered by review score in descending order, limiting results to 10
SELECT *
FROM nomnon  -- Typo in table name
ORDER BY review DESC
LIMIT 10;

-- 11. Select the name and a rating based on review scores, using a CASE statement to categorize the ratings
SELECT name,
  CASE
    WHEN review > 4.5 THEN 'Extraordinary'
    WHEN review > 4 THEN 'Excellent'
    WHEN review > 3 THEN 'Good'
    WHEN review > 2 THEN 'Fair'
    ELSE 'Poor'
  END AS 'rating'
FROM nomnom;
