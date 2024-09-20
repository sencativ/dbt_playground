{{ config(materialized='table') }}

SELECT 
index,
'Order ID' AS order_id, 
Date AS date, 
Status AS status, 
{{ dbt_utils.generate_surrogate_key([
  'SKU'
])
}} AS product_id, 
{{ dbt_utils.generate_surrogate_key([
  'Fulfilment',
  '`fulfilled-by`'
])
}} AS fulfiment_id,
{{ dbt_utils.generate_surrogate_key([
  'asin'
])
}} AS sales_shipment_id,
{{ dbt_utils.generate_surrogate_key([
  'index'
])
}} AS sales_channel_id,
{{ dbt_utils.generate_surrogate_key([
  '`promotion-ids`',
  '`Order ID`'
])
}} AS promotion_id,
qty,
amount
FROM`dwhlearning.dibimbing.amazon_sale_report` 