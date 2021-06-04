select
    regexp_replace(fsjp__f_sectors_text__c, ',(.+)', '')
from
    salesforce.forcas
