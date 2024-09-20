{{ config(materialized='table') }}

WITH t_data AS (
SELECT DISTINCT
  index,
  `Sales Channel ` AS sales_channel,
  `ship-service-level` AS ship_service_level,
  `fulfilled-by` AS fulfilled_by
FROM `dwhlearning.dibimbing.amazon_sale_report` 
)
SELECT
{{ dbt_utils.generate_surrogate_key([
  'index'
])
}} AS sales_channel_id, sales_channel, ship_service_level, fulfilled_by
FROM t_data