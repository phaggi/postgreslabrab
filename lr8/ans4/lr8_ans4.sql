with days as
        (select distinct person_order.order_date, to_char(person_order.order_date, 'YYYY-MM-DD') "day"
        from person_order
        where
            person_order.order_date between '2022-01-01' and '2022-01-15'),
    diapason_days as
        (select '2022-01-01':: date + s.a "day"
        from pg_catalog."generate_series"(0, 14, 1)
        as s(a)),
    diapason_formatted_days as
        (select diapason_days.day, to_char(diapason_days.day, 'YYYY-MM-DD') "formatted_day"
        from diapason_days)
select distinct diapason_formatted_days.formatted_day "missing_day"
from diapason_formatted_days, days
where
    diapason_formatted_days.formatted_day
    not in (select days.day from days)
order by missing_day;