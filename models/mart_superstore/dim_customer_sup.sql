WITH purchase_time AS (
    SELECT 
        a.Customer_ID,
        -- Đưa CASE vào TRONG hàm MAX và MIN
        MAX(CASE WHEN b.Sales > 0 THEN b.Order_Date ELSE NULL END) AS latest_order_date,
        MIN(CASE WHEN b.Sales > 0 THEN b.Order_Date ELSE NULL END) AS onboard_date,
        COUNT(DISTINCT CASE WHEN b.Sales > 0 THEN b.Postal_Code END ) AS No_Location
    FROM {{ ref('stg_customer_sup') }} a
    LEFT JOIN {{ ref('stg_transaction_sup') }} b USING (Customer_ID)
    GROUP BY 1
)

SELECT
    b.*,
    a.latest_order_date,
    a.onboard_date,
    a.No_Location
FROM purchase_time a 
LEFT JOIN {{ ref('stg_customer_sup') }} b USING (Customer_ID)