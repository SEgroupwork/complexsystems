use coursework;
select count(*), gplusplaceid
from reviews
group by gplusplaceid
having count(*) > 3
