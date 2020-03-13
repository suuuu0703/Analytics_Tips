select
    td_time_format(date_col, 'yyyy-MM-dd', 'JST') as base_date
from (
    select
        d
    from (
        values
            sequence(td_time_parse('2019-07-01', 'JST'), td_time_parse('2019-12-31', 'JST'), 60 * 60 * 24)
        ) as date_array(d)
    ) as da_tab
    cross join
        unnest(d) as tab(date_col)
