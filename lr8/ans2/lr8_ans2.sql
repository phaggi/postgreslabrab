/*
Напишите SQL запрос который возвращает имена любителей пиццы, возраст, адрес, дату покупки, название пиццы,
цену за пиццу и имя пиццерии с следующими условиями

рейтинг пиццерии строго больше 4.3.
цена за пиццу лежит включительно в интервале от 700 и 900

Обратите внимание на часть ответа ниже с учетом именования выходных атрибутов вашего запроса.
pname

age

address

order_date

pizza_name

price

pizzeria
*/

select p.name pname, p.age, p.address, po.order_date, menu.pizza_name, menu.price, pizzeria."name" as "pizzeria"
from
    person_order po
    inner join
    person p
    on po.person_id = p."id"
    inner join
    menu
    on po.menu_id = menu."id"
    inner join
    pizzeria
    on menu.pizzeria_id = pizzeria.id
where
    pizzeria.rating > 4.3
    and
    menu.price between 700 and 900;

