SELECT 
orders_id,
date_date,
quantity,
ROUND((margin+shipping_fee-logcost-ship_cost),2) as operational_margin,
FROM {{ ref('int_orders_margin') }}
LEFT JOIN {{ ref('stg_raw__ship') }} 
USING (orders_id)
