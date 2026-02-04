SELECT
    date_date AS DATE,
    COUNT(orders_id) AS Total_Nb_transactions,
    SUM(revenue) AS Total_revenue,
    -- AVG(purchase_price) AS average_basket,
    SUM(Operational_margin) AS total_margin,
    SUM(purchase_cost) AS Total_purchase_cost,
    SUM(shipping_fee) AS Total_shipping_fee,
    SUM(logcost) AS Total_log_costs,
FROM {{ ref('int_orders_operational') }}
GROUP BY date_date