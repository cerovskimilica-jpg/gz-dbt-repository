SELECT*,
(quantity*purchase_price) as purchase_cost,
ROUND((revenue-(quantity*purchase_price)),2) as margin,
{{ margin_percent( 'revenue' , 'ROUND((revenue-(quantity*purchase_price)),2)' ) }} as margin_percent,
FROM {{ ref('stg_raw__sales') }}  
LEFT JOIN {{ ref('stg_raw__product') }}
USING (products_id) 
ORDER by products_id DESC