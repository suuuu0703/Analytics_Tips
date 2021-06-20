--日付直接指定
select
    td_time_format(date_col, 'yyyy-MM-dd', 'JST') as base_date
    ,td_time_format(td_time_parse(cast(date_trunc('week', cast(td_time_format(date_col, 'yyyy-MM-dd HH:MM:SS', 'JST') as timestamp)) as varchar)), 'yyyy-MM-dd') as base_week
    ,td_time_format(date_col, 'yyyy-MM-01', 'JST') as base_month
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


--日付をクエリ実行日を起点に動的指定
select
    td_time_format(date_col, 'yyyy-MM-dd', 'JST') as base_date
    ,td_time_format(td_time_parse(cast(date_trunc('week', cast(td_time_format(date_col, 'yyyy-MM-dd HH:MM:SS', 'JST') as timestamp)) as varchar)), 'yyyy-MM-dd') as base_week
    ,td_time_format(date_col, 'yyyy-MM-01', 'JST') as base_month
from (
    select
        d
    from (
        values
            sequence(
                td_time_parse(cast(date_add('month', -14, cast(td_time_format(td_scheduled_time(), 'yyyy-MM-01', 'JST') as date)) as varchar), 'JST')
                ,td_time_parse(td_time_format(td_scheduled_time(), 'yyyy-MM-01', 'JST'), 'JST')
                , 60 * 60 * 24
            )
        ) as date_array(d)
    ) as da_tab
    cross join
        unnest(d) as tab(date_col)
