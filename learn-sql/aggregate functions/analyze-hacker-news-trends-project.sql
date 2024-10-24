-- SQLite
-- 1. Select the top 5 titles and scores from 'hacker_news', ordered by score in descending order
SELECT title, score
FROM hacker_news
ORDER BY score DESC
LIMIT 5;

-- 2. Calculate the total sum of scores from all entries in 'hacker_news'
SELECT SUM(score)
FROM hacker_news;

-- 3. Calculate the total score for each user, showing only those with a total score greater than 200
SELECT SUM(score), user
FROM hacker_news
GROUP BY user
HAVING SUM(score) > 200;

-- 4. Perform a manual calculation of a specific average score (309 + 304 + 282 + 517) divided by 6366
SELECT (309 + 304 + 282 + 517) / 6366.0;

-- 5. Count how many times the specific YouTube URL appears, grouped by user, ordered by the count in descending order
SELECT user, url, COUNT(url)
FROM hacker_news
WHERE url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
GROUP BY user
ORDER BY 3 DESC;

-- 6. Categorize URLs into sources (GitHub, Medium, New York Times, or Other) based on their patterns
SELECT CASE
   WHEN url LIKE '%github.com%' THEN 'GitHub'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
   ELSE 'Other'
  END AS 'Source'
FROM hacker_news;

-- 7. Count the number of URLs grouped by source categories defined in the previous query
SELECT CASE
   WHEN url LIKE '%github.com%' THEN 'GitHub'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
   ELSE 'Other'
  END AS 'Source', 
  COUNT(url)
FROM hacker_news
GROUP BY 1;

-- 8. Retrieve the first 10 timestamps from the 'hacker_news' table
SELECT timestamp
FROM hacker_news
LIMIT 10;

-- 9. Extract the hour from the timestamp, grouped by timestamp and limited to 20 entries
SELECT timestamp,
   strftime('%H', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;

-- 10. Calculate the average score and count of entries for each hour, ordering the results in descending order
SELECT
   strftime('%H', timestamp), 
   AVG(score),
   COUNT(*)
FROM hacker_news
GROUP BY 1
ORDER BY 2 DESC;  -- Corrected ordering by the second column

-- 11. Select the hour, average score rounded, and count of stories, filtering out null timestamps and ordering by hour
SELECT
   strftime('%H', timestamp) AS hour, 
   ROUND(AVG(score)) AS avg_score,
   COUNT(*) AS num_stories
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1
ORDER BY hour DESC;  -- Corrected ordering to be more explicit
