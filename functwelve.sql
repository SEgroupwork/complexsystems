use coursework;

SELECT places.price, AVG(reviews.rating) AS 'Average Rating'
FROM places
RIGHT JOIN reviews ON places.gPlusPlaceId = reviews.gPlusPlaceID
GROUP BY places.price
ORDER BY places.price DESC

;


