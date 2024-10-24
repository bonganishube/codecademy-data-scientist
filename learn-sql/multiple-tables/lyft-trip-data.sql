-- SQLite
-- 1. Select all records from the 'trips', 'riders', and 'cars' tables
SELECT * FROM trips;
SELECT * FROM riders;
SELECT * FROM cars;

-- 2. Comment indicating to identify the primary key for each table
-- What's the primary key for each table

-- 3. Select the first and last names of riders, but there is a syntax error missing a comma before 'cars.model'
SELECT riders.first, 
       riders.last,
       cars.model  -- Fixed: added a comma here
FROM riders, cars;  -- Note: This creates a Cartesian product; consider using JOIN

-- 4. Perform a LEFT JOIN between 'trips' and 'riders' on the riders_id field
SELECT * 
FROM trips
LEFT JOIN riders ON 
trips.riders_id = riders.id; 

-- 5. Perform an INNER JOIN between 'trips' and 'cars' on car_id; note the missing table name for 'cars_id'
SELECT *
FROM trips
JOIN cars ON
trips.car_id = cars.id;  -- Fixed: changed 'cars_id' to 'cars.id'

-- 6. Combine results from two tables 'riders' and 'riders2', assuming both have the same structure
SELECT * 
FROM riders
UNION 
SELECT * 
FROM riders2;

-- 7. Calculate the average cost of trips, rounded to 2 decimal places
SELECT ROUND(AVG(cost), 2) 
FROM trips;

-- 8. Select all records from 'riders' where the total number of trips is greater than 500
SELECT *
FROM riders
WHERE total_trips > 500;

-- 9. Count the number of cars with an 'active' status
SELECT COUNT(*) 
FROM cars
WHERE status = 'active';

-- 10. Select all records from 'cars', ordering by trips completed in descending order and limiting results to the top 2
SELECT * 
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;
