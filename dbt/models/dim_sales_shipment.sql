{{ config(materialized='table') }}

WITH t_data AS (
SELECT DISTINCT
  ASIN AS asin,
  `ship-service-level` AS ship_service_level,
  `Courier Status` AS courier_status,
  `ship-city` AS ship_city, 
  `ship-state` AS ship_state,
  `ship-postal-code` AS ship_postal_code,
  `ship-country` AS ship_country
FROM `dwhlearning.dibimbing.amazon_sale_report` 
)
SELECT
{{ dbt_utils.generate_surrogate_key([
  'asin'
])
}} AS sales_shipment_id, ship_service_level, courier_status, ship_city, ship_state, ship_postal_code, ship_country
FROM t_data