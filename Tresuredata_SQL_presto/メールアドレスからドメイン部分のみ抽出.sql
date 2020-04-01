select
    regexp_replace(email, '^(.+)@', '') as domain --メールアドレスからドメイン部分のみを抽出
from
    salesforce.lead
