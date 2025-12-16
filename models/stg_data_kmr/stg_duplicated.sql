SELECT
CAST(Month AS Date) AS Month,
Store_ID,
Team,
CASE WHEN PIC_confirm = true THEN "Yes" ELSE "No" END AS PIC_confirm,
Detail_Reason AS Reason,
Main_Store
FROM `data-project-434509.kmr_data.Data_Check_Duplicate`
WHERE Store_id IS NOT NULL

--- Check Month + Store_ID có bị duplicate không ?