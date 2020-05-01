use coursework;
select count(*) as 'Number of reviews', places.gplusplaceid, places.name
from reviews
inner join places on reviews.gplusplaceid = places.gplusplaceid
group by places.gplusplaceid, places.name
order by count(*) desc
limit 1
;
