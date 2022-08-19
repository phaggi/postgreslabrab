with avg_rat as
    (select avg(rating) + 0.5 avg_rating from pizzeria)
select name from pizzeria, avg_rat
where rating > avg_rat.avg_rating;
