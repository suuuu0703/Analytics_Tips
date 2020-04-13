select 
    td_time_format(td_time_add(td_scheduled_time(), '-29d'), 'yyyy-MM-dd', 'JST') as base_date
    ,td_time_format(td_time_add(td_scheduled_time(), '-22d'), 'yyyy-MM-dd', 'JST') as col_date

union all

select 
    td_time_format(td_time_add(td_scheduled_time(), '-22d'), 'yyyy-MM-dd', 'JST') as base_date
    ,td_time_format(td_time_add(td_scheduled_time(), '-15d'), 'yyyy-MM-dd', 'JST') as col_date

union all

select 
    td_time_format(td_time_add(td_scheduled_time(), '-15d'), 'yyyy-MM-dd', 'JST') as base_date
    ,td_time_format(td_time_add(td_scheduled_time(), '-8d'), 'yyyy-MM-dd', 'JST') as col_date

union all

select 
    td_time_format(td_time_add(td_scheduled_time(), '-8d'), 'yyyy-MM-dd', 'JST') as base_date
    ,td_time_format(td_time_add(td_scheduled_time(), '-1d'), 'yyyy-MM-dd', 'JST') as col_date
