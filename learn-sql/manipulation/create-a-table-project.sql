-- Create a table named 'friends' with three columns: id, name, and birthday
CREATE TABLE friends (
  id INTEGER,        -- Unique identifier for each friend (integer type)
  name TEXT,         -- Name of the friend (text type)
  birthday DATE      -- Birthday of the friend (date type)
);

-- Insert a record for Ororo Munroe with an id of 1 and a specified birthday
INSERT INTO friends (id, name, birthday)
VALUES (1, 'Ororo Munroe', '1940-05-30');

-- Insert a record for Rajohana Molotsi with an id of 2 and a specified birthday
INSERT INTO friends (id, name, birthday)
VALUES (2, 'Rajohana Molotsi', '1997-01-23');

-- Insert a record for Moses Shube with an id of 3 and a specified birthday
INSERT INTO friends (id, name, birthday)
VALUES (3, 'Moses Shube', '1966-01-18');

-- Update the name of the friend with id 1 from 'Ororo Munroe' to 'Storm'
UPDATE friends
SET name = 'Storm'
WHERE id = 1;

-- Alter the 'friends' table to add a new column 'email' to store email addresses
ALTER TABLE friends
ADD COLUMN email TEXT;

-- Update the email address for the friend with id 1
UPDATE friends
SET email = 'storm@codecademy.com'
WHERE id = 1;

-- Update the email address for the friend with id 2
UPDATE friends
SET email = 'rajohanamolotsi@codecademy.com'
WHERE id = 2;

-- Update the email address for the friend with id 3
UPDATE friends
SET email = 'mosesshube@codecademy.com'
WHERE id = 3;

-- Delete the record for the friend with id 1 (Storm)
DELETE FROM friends
WHERE id = 1;

-- Select all remaining records from the 'friends' table to see the current state
SELECT * 
FROM friends;
