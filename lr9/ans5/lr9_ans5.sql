with max_orders_pizza as (
        select menu_id, count(menu_id) cnt
        from person_order
        group by menu_id
        order by cnt desc
        limit 1)
select pizza_name, cnt from max_orders_pizza mp inner join menu on mp.menu_id = menu."id";