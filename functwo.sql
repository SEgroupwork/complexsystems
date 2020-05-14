use coursework;
SELECT price, COUNT(*) as 'Places'
FROM places
group by places.price
order by places.price asc
;
