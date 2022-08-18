with pizzerias as (select pizzeria."name" from pizzeria where pizzeria.rating > 4.5),
men as (select person.name from person where person.gender = 'male')
select name from pizzerias union select name from men order by name;