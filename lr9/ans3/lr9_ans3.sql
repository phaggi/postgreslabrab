with sorted_pers as (select name, address from person
order by name)
select address, string_agg(name, ', ') list_customers
from sorted_pers
group by address
order by address;
