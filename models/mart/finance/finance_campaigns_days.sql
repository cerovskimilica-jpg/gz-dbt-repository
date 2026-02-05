SELECT 
date_date,
average_basket,
total_margin,
(total_margin - ads_cost) as ads_margin,
ads_cost, 
impression,
click,
Total_quantity,
Total_revenue, 
Total_purchase_cost, 
Total_shipping_fee,
Total_log_costs,
FROM {{ ref('int_campaigns_day') }} 
LEFT JOIN {{ ref('finance_days') }} 
USING (date_date)
