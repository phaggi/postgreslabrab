/*
Напишите SQL запрос возвращающий уникальные (неповторяющиеся) имена любителей пицц по парам,
которые проживают в одном городе. Результат отсортируйте по именам любителей пицц.
Обратите внимание на часть ответ на задачу ниже с учетом именования выходных атрибутов вашего запроса.

person1 person2
Anna    Andrey
Elvira  Denis
…       …
*/

select * from "public".person;
create schema lr8;
commit;
