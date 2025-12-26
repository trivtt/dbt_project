SELECT
*,
ROUND(SAFE_DIVIDE(Profit,Sales),2) AS Profit_Margin
FROM {{ref("stg_transaction_sup")}}