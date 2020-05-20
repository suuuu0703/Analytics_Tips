select
    base_date
    ,date_format(date_parse(date_format(cast(base_date as date) + interval '1' month, '%Y-%m-01'), '%Y-%m-%d') - interval '1' day, '%Y-%m-%d') as col_date
from (
    select
        td_time_format(date_col, 'yyyy-MM-01', 'JST') as base_date
    from (
        select
            d
        from (
            values
                sequence(td_time_parse(date_format(from_unixtime(td_scheduled_time()) - interval '14' month, '%Y-%m-01'), 'JST'), td_time_add(td_time_parse(td_time_format(td_scheduled_time(), 'yyyy-MM-01', 'JST'), 'JST') ,'-1d'), 60 * 60 * 24)
            ) as date_array(d)
        ) as da_tab
        cross join
            unnest(d) as tab(date_col)
    group by
        1
)

union all

select 
        td_time_format(td_scheduled_time(), 'yyyy-MM-01', 'JST') as base_date
        ,(select max(date) from chatwork_account_stats.cs_paid_plan_usage_per_contract_daily_v1) as col_date
