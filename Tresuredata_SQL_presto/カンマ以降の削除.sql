select
    regexp_replace(fsjp__f_subsectors__c, ',(.+)', '')
from
    salesforce.forcas
