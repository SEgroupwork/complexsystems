use coursework;

SELECT categories, AVG(rating) AS 'Average rating'
FROM reviews
GROUP BY rating, categories
ORDER BY rating DESC NULLS LAST     
LIMIT 5

;


