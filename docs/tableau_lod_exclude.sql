WITH original_query AS (
    SELECT
        client,
        TO_NUMBER(to_char(order_date, 'MM')) AS order_date,
        SUM(amount)                          AS amount
    FROM
        sales
    GROUP BY
        client,
        TO_NUMBER(to_char(order_date, 'MM'))
), 
query_with_exclusion AS (
    SELECT
        TO_NUMBER(to_char(order_date, 'MM')) AS order_date,
        SUM(amount)                          AS amount
    FROM
        sales
    GROUP BY
        TO_NUMBER(to_char(order_date, 'MM'))
)
SELECT
    original_query.client,
    original_query.order_date,
    original_query.amount,
    query_with_exclusion.amount AS amount_total_by_month
FROM original_query
    INNER JOIN query_with_exclusion 
        ON ( decode(original_query.order_date, query_with_exclusion.order_date, 0, 1) = 0)