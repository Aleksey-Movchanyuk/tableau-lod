WITH t0 AS (
    SELECT
        client,
        order_id,
        trunc(CAST(order_date AS DATE), 'MONTH') AS order_date,
        SUM(amount)    AS sum_amount
    FROM
        sales
    GROUP BY
        client,
        order_id,
        trunc(CAST(order_date AS DATE),
              'MONTH')
), 
t2 AS (
    SELECT
        t1.client,
        AVG(t1.sum_amount) AS avg_amount
    FROM
        (
            SELECT
                client,
                SUM(sales.amount) AS sum_amount
            FROM
                sales
            GROUP BY
                client,
                order_id
        ) t1
    GROUP BY
        t1.client
)
SELECT
    t0.client,
    t0.order_id,
    t0.order_date,
    t0.sum_amount,
    t2.avg_amount
FROM t0
    INNER JOIN t2 
        ON ( decode(t0.client, t2.client, 0, 1) = 0 );