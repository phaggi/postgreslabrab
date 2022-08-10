/*Напишите SQL запрос который вернет имена девушек возрастом более 30 лет из Казани и Санкт-Петербурга,
 * которые заказали какую-либо пиццу. Результат отсортируйте по имени в убывающем порядке.
 * Обратите внимание на часть ответа ниже с учетом именования выходных атрибутов вашего запроса
 * (в ответе возможны физические дубликаты строк)
 * name	age	address	order_date*/

select p.name, p.age, p.address, po.order_date
from person_order po left join person p on po.person_id = p.id
where
	age > 30 and
	gender = 'female'and
	address in ('Kazan', 'Saint-Petersburg')
group by p.name, p.address, p.age, po.order_date
order by p.name desc, po.order_date;
