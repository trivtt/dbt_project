SELECT
  CAST(Month AS DATETIME) AS Month,  -- Thay DATETIME cho chuẩn
  CAST(buyer_id AS STRING) AS Buyer_ID, -- Thay str bằng STRING
  CAST(PIC AS STRING) AS PIC          -- Thay str bằng STRING
FROM
  `data-project-434509.kmr_data.Data_Transfer`
WHERE
  Month IS NOT NULL AND buyer_id IS NOT NULL

--- Thêm điều kiện PIC không null và đk Month + buyer_id không được duplicated trong file source.yml