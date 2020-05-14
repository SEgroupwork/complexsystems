use coursework;
select places.price, Count(reviews.gPlusPlaceId) as 'Amount of Reviews'
from places 
Inner Join reviews on places.gPlusPlaceId = reviews.gPlusPlaceId
group by places.price
order by places.price asc
;

