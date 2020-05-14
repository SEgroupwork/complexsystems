use coursework;
select closed, count(*)
from places
where closed ='True' or closed='False'
group by places.closed
order by places.closed asc
;
