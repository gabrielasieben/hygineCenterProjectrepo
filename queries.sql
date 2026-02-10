SELECT 
strftime('%Y', first_date) AS year,
COUNT(DISTINCT visitor_id) AS number_visitor
FROM visitor 
GROUP BY year
ORDER BY number_visitor DESC;

SELECT 
strftime('%Y', first_date) AS year,
COUNT(DISTINCT visitor_id) AS number_femalevisitor
FROM visitor 
WHERE gender = 'W'
GROUP BY year
ORDER BY number_femalevisitor;

