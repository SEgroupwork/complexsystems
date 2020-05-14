use coursework; 
SELECT rating, AVG(LENGTH(reviewText)) AS 'Average Length'
From reviews 
GROUP BY rating
ORDER BY rating asc 
;
