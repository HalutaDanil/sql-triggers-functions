select
    p."name"
    , m.pizza_name
    , m.price
    , trim(
        trailing '.' from trim(
            trailing '0' from round(
                m.price - (m.price * pd.discount / 100), 2
            )::text
        )
    ) as discount_price
    , pi."name" as pizzeria_name
from person_order po
    join menu m on m.id = po.menu_id
    join pizzeria pi on pi.id = m.pizzeria_id
    join person p on p.id = po.person_id
    join
        person_discounts pd
        on pd.person_id = p.id and pd.pizzeria_id = m.pizzeria_id
order by 1, 2;
