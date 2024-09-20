{{ config(materialized='table') }}

WITH t_data AS (
SELECT DISTINCT
  Style AS style,
  SKU AS sku,
  Category AS category,
  Size AS size,
FROM `dwhlearning.dibimbing.amazon_sale_report` 
)
SELECT
{{ dbt_utils.generate_surrogate_key([
  'sku'
])
}} AS product_id, *
FROM t_data