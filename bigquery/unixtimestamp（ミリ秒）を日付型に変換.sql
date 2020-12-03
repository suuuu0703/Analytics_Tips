select
    format_datetime('%Y-%m-%d %', date(timestamp_micros(event_timestamp), "Asia/Tokyo")) as time
