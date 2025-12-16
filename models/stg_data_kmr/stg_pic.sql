SELECT 
PIC_CODE,
CAST(Name AS STRING) Name,
Email,
PIC, 
Sub_Team,
CAST(Onboard_Date AS Date) Onboard_Date,
CAST(Probation_Date AS Date) Probation_Date,
CAST(Last_Working_Date AS Date) Last_Working_Date,
CAST(Terminate_Date AS Date) Terminate_Date,
Status
FROM `data-project-434509.kmr_data.Data_PIC_HCM`
WHERE PIC_CODE IS NOT NULL

---- Thêm đk PIC_Code duplicate & Name is not null & duplicate & PIC is not null & duplicate & Onboard_Date is not null & Status is not null