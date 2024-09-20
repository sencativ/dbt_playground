{{ config(materialized='table') }}

WITH t_data AS (
SELECT DISTINCT
  `promotion-ids` AS promotion_ids,
  `Order ID` AS order_id, 
  amount,
  b2b, 
  `fulfilled-by` AS fulfilled_by
FROM `dwhlearning.dibimbing.amazon_sale_report` 
)
SELECT
{{ dbt_utils.generate_surrogate_key([
  'promotion_ids',
  'order_id'
])
}} AS promotion_id, *
FROM t_data