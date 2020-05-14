use coursework;

SELECT  AVG(rating) AS 'Average rating', categories
FROM reviews
GROUP BY rating, categories
ORDER BY rating DESC     
;


