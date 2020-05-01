use coursework;
select price, count(*) as 'Places'
from places
where closed = 'False'
group by places.price
order by places.price asc
;

