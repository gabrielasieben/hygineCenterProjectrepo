-- numbers of visitors each year
SELECT 
strftime('%Y', first_date) AS year,
COUNT(DISTINCT visitor_id) AS number_visitor
FROM visitor 
GROUP BY year
ORDER BY number_visitor DESC;

-- numbers of female visitors each year
SELECT 
strftime('%Y', first_date) AS year,
COUNT(DISTINCT visitor_id) AS number_femalevisitor
FROM visitor 
WHERE gender = 'W'
GROUP BY year
ORDER BY number_femalevisitor;

-- how often have every service been used since beginning 
SELECT COUNT(use_id) AS total_use, service_id 
FROM service_use
GROUP BY service_id
ORDER BY total_use DESC;

-- how many articles have been given away ordered by article
SELECT COUNT(ag.out_id) AS total_out, a.name
FROM article_giveaway ag
JOIN article a ON ag.article_id = a.article_id
GROUP BY a.article_id, a.name;

-- Minimum, Maximum and Avarage of volunteers birth year
SELECT MIN(birth_year), MAX(birth_year), AVG(birth_year)
FROM visitor;

-- numbers of volunteers working in the hygine Center
SELECT COUNT(name)
FROM volunteer;

-- numbers of volunteers working each day 
SELECT COUNT(volunteer_id), date 
FROM volunteer 
GROUP BY date
ORDER BY date;

-- Average of people working per day 
SELECT AVG(dailyWorkers) AS personPerDay
FROM (
SELECT COUNT(volunteer_id) AS dailyWorkers, date 
FROM workplan 
GROUP BY date) sub;

-- number of volunteers have worked in total
SELECT COUNT(volunteer_id) AS workedTotal, volunteer_id
FROM workplan
GROUP BY volunteer_id;