SELECT
CAST(Store_id AS STRING) Store_ID,
CAST(Address AS STRING) Address,
CAST(Latitude AS STRING) Latitude,
CAST(Longitude AS STRING) Longitude,
CAST(Geocode AS STRING) Geocode
FROM `data-project-434509.kmr_data.Data_Geocode`
WHERE Store_id IS NOT NULL 

--- Check Store_id có bị duplicate không