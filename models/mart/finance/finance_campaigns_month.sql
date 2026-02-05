SELECT 
DATE_trunc(date_date,month) as datemonth,
average_basket,
(total_margin - ads_cost) as ads_margin,
ads_cost, 
impression,
click,
Total_quantity,
Total_revenue, 
Total_purchase_cost, 
Total_shipping_fee,
Total_log_costs,
FROM {{ ref('finance_campaigns_days') }}