with p1 as (select person_id, order_date from person_order order by order_date desc),
     p2 as (select person_id, order_date from person_order order by order_date asc),
     double as (select distinct p1.person_id, p1.order_date p1_date, p2.order_date p2_date
                from p1 inner join p2
                on p1.person_id = p2.person_id
                and p1.order_date < p2.order_date),
     single as (select distinct p1.person_id, p1.order_date p1_date, p2.order_date p2_date
                from p1 inner join p2
                on p1.person_id = p2.person_id
                and p1.order_date = p2.order_date
                where p1.person_id not in (select person_id from double)),
     first_dates as
                (select person_id, p1_date from single
                union
                select person_id, p1_date from double)
select person_id, to_char(first_dates.p1_date, 'yyyy-mm-dd') min_order_date
from first_dates order by person_id;