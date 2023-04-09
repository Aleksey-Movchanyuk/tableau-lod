WITH pre_aggregation AS (
  SELECT
    client,
    TO_NUMBER(TO_CHAR(order_date, 'MM')) AS month,
    order_id,
    SUM(amount) AS sum_amount
  FROM sales
  GROUP BY
    client,
    TO_NUMBER(TO_CHAR(order_date, 'MM')),
    order_id
)
SELECT
  client,
  month,
  AVG(sum_amount) AS avg_amount
FROM pre_aggregation
GROUP BY
  client,
  month