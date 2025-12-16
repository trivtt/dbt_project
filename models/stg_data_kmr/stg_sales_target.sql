SELECT 
CAST(Month AS Date) Month,
CAST(PIC AS STRING) PIC,
CAST(Sub_Team AS STRING) Sub_Team,
CAST(Target_Total_GMV AS INTEGER) Target_Total_GMV,
CAST(Target_GMV_New_Cust AS INTEGER) Target_GMV_New_Cust
FROM `data-project-434509.kmr_data.Data_Target_Sales`
WHERE Month IS NOT NULL AND PIC IS NOT NULL 

--- Check thêm đk Sub team is not null và Month + PIC is not duplicate