SELECT
    date_date AS DATE,
    COUNT(orders_id) AS Total_Nb_transactions,
    ROUND(SUM(revenue),0) AS Total_revenue,
    ROUND(SUM(revenue)/COUNT(orders_id), 0) AS average_basket,
    ROUND(SUM(Operational_margin),0) AS total_margin,
    ROUND(SUM(purchase_cost),0) AS Total_purchase_cost,
    ROUND(SUM(shipping_fee),0) AS Total_shipping_fee,
    ROUND(SUM(logcost),0) AS Total_log_costs,
    ROUND(SUM(quantity),0) AS Total_quantity,
FROM {{ ref('int_orders_operational') }}
GROUP BY date_date