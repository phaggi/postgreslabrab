with
    min_rat as (select min(rating) rat from pizzeria),
    max_rat as (select max(rating) rat from pizzeria),
    avg_rat as (select avg(rating) rat from pizzeria)

select  round(min_rat.rat, 2) min_rating,
        round(max_rat.rat, 2) max_rating,
        round(avg_rat.rat, 2) avg_rating
from min_rat, max_rat, avg_rat;