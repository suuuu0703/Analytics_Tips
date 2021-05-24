select
    regexp_like(email, '^(?:[\w!#$%&''*+\/\-=?^`{|}~]+(?:\.[\w!#$%&''*+\/\-=?^`{|}~]+)*)@(?:[a-zA-Z]+[a-zA-Z0-9-]*[a-zA-Z0-9](?:\.[a-zA-Z]+[a-zA-Z0-9-]*[a-zA-Z0-9])*(?:\.[a-zA-Z0-9]+))$')
from
    salesforce.lead
