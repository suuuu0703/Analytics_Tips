select
  json_extract_scalar(properties, '$.semi_auto_account_id.value')
from
  hubspot.contacts
