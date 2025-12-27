{{ config(
    materialized='incremental',
    unique_key='Order_ID', 
    incremental_strategy='merge' 
) }}

SELECT
*,
ROUND(SAFE_DIVIDE(Profit,Sales),2) AS Profit_Margin
FROM {{ref("stg_transaction_sup")}}

{% if is_incremental() %}
  -- Logic Lookback 3 ngày:
  -- dbt sẽ lấy dữ liệu từ nguồn mà có updated_at >= (Ngày lớn nhất hiện tại - 3 ngày)
  WHERE Order_Date >= (
      SELECT DATE_SUB(MAX(Order_Date), INTERVAL 3 DAY) FROM {{ this }}
  )
{% endif %}