with
    p1 as (select name, address from person),
    p2 as (select name, address from person),
    newdata as (select distinct p1.name person_1, p2.name person_2
    from p1
    inner join p2
    on p1.address = p2.address and p1.name < p2.name)
    select person_1, person_2 from newdata;
