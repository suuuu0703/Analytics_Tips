select
    format_timestamp('%Y-%m-%d %H:%M:%S', timestamp_micros(event_timestamp), 'Asia/Tokyo') as datetime
