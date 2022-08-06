Select *
FROM data_analyst_jobs
Select COUNT(*)
FROM data_analyst_jobs
SELECT *
FROM data_analyst_jobs
LIMIT 10
SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location='TN' OR location='KY';
SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location='TN' AND star_rating>='4'
4
How many postings in the dataset have a review count between 500 and 1000?
SELECT COUNT(*)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000; 
151

Show the average star rating for companies in each state. The output should show the state as `state` and the average rating for the state as `avg_rating`. Which state shows the highest average rating?
SELECT location AS state, AVG(star_rating) AS avg_rating
From data_analyst_jobs
GROUP BY state
Order by avg_rating DESC;

Nebraska

Select unique job titles from the data_analyst_jobs table. How many are there?
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
881

How many unique job titles are there for California companies?
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location='CA'

230

Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?
SELECT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count>'5000' AND company IS NOT null
GROUP BY company;

40

Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?
SELECT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count>'5000' AND company IS NOT null
GROUP BY company
ORDER BY avg_rating DESC;

Unilever 4.19

Find all the job titles that contain the word ‘Analyst’. How many different job titles are there?
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE title LIKE '%Analyst%';

754

How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’?
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE title NOT LIKE'%Analyst%' OR title NOT LIKE'%Analytics%';

802

What word do these positions have in common?
SELECT title
FROM data_analyst_jobs
WHERE title NOT LIKE'%Analyst%' AND title NOT LIKE'%Analytics%'
AND title NOT LIKE'%ANALYST%' AND title NOT LIKE'%ANALYTICS%'
AND title NOT LIKE'%analyst%' AND title NOT LIKE'%analytics%';
Tableau
