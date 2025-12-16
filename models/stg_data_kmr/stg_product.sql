WITH a AS
(SELECT * FROM `data-project-434509.kmr_data.Data_Veggies_Product`
UNION ALL
SELECT * FROM `data-project-434509.kmr_data.Data_NonVeggies_Product`
)

SELECT
CAST(SKU AS STRING) SKU,
CAST(VN_Name AS STRING) Product_Name,
Category,
Storage_Condition,
Supplier,
ON_OFF
FROM a 
WHERE SKU IS NOT NULL
-- Check đk SKU duplicate