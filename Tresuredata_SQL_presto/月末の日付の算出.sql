select
    date_format(date_parse(date_format(cast('2020-04-07' as date) + interval '1' month, '%Y-%m-01'), '%Y-%m-%d') - interval '1' day, '%Y-%m-%d') as date
