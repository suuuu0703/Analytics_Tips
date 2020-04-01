select
    regexp_replace(email, '^(.+)@', '') --メールアドレスからドメイン部分のみを抽出
from
    salesforce.lead
