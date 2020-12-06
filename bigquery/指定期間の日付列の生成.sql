select
    cast(date_trunc(date, day) as string) as date
from
    unnest(generate_date_array( date('2019-12-01'), date_sub(current_date('Asia/Tokyo'), interval 1 day) )) AS date
group by
    1
