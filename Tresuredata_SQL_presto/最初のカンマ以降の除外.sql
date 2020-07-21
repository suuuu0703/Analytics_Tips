select
    regexp_replace(fsjp__f_sectors__c, ',(.+)', '')
from
    salesforce.forcas
