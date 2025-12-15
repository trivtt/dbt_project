{{ config(
    materialized='view'
) }}
---- Tại bước staging thì không cần tạo bảng table theo setup trong file project.yml, mà chỉ cần tạo view để build flow cho tối ưu

SELECT * FROM `data-project-434509.kmr_data.Fact_Order`