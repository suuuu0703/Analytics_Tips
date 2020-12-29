SELECT
  date,
  fhoffa.x.median(ARRAY_AGG(sales)) as sales
FROM
  table1
GROUP BY
  date
