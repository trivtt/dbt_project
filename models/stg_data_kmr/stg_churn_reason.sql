SELECT
CAST(month AS Date) Month,
CAST(store_id AS STRING) Store_ID,
Team,
Type_of_churn AS Churn_Type,
Reasons_for_Customer_Churn AS Churn_Reason
FROM `data-project-434509.kmr_data.Data_Churn`
WHERE Month IS NOT NULL AND store_id IS NOT NULL AND Type_of_churn IS NOT NULL

--- Check month + store_id có duplicate không ?