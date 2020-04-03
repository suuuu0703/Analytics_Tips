select
    culumn_name
from
    test_table
where
    trim(culumn_name) is not null --NULL/スペースだけのレコードを除外
    and regexp_extract(trim(culumn_name), '\s') is null --空白文字だけのレコードを除外
