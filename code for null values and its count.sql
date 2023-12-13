```sql
-- checking for null values and number of null values in start_station_name
SELECT COUNT(*) AS start_station_name_NULL_COUNT
FROM `pelagic-talent-402107.cyclisticbikeshare.united_data_table` 
WHERE start_station_name IS NULL;

--checking for null values and number of null values in start_station_id
SELECT COUNT(*) AS start_station_id_NULL_COUNT
FROM `pelagic-talent-402107.cyclisticbikeshare.united_data_table` 
WHERE start_station_id IS NULL;

--checking for null values and number of null values in end_station_name
SELECT COUNT(*) AS end_station_name_NULL_COUNT
FROM `pelagic-talent-402107.cyclisticbikeshare.united_data_table` 
WHERE end_station_name IS NULL;

--checking for null values and number of null values in end_station_id
SELECT COUNT(*) AS end_station_id_NULL_COUNT
FROM `pelagic-talent-402107.cyclisticbikeshare.united_data_table` 
WHERE end_station_id IS NULL;

--checking for null values and number of null values in end_lat
SELECT COUNT(*) AS end_lat_NULL_COUNT
FROM `pelagic-talent-402107.cyclisticbikeshare.united_data_table` 
WHERE end_lat IS NULL;

--checking for null values and number of null values in end_lng
SELECT COUNT(*) AS end_lng_NULL_COUNT
FROM `pelagic-talent-402107.cyclisticbikeshare.united_data_table` 
WHERE end_lat IS NULL;

--checking for total count of null values in all columns in the data
SELECT
(SELECT COUNT(*)
FROM `pelagic-talent-402107.cyclisticbikeshare.united_data_table` 
WHERE start_station_name IS NULL) +
(SELECT COUNT(*)
FROM `pelagic-talent-402107.cyclisticbikeshare.united_data_table` 
WHERE start_station_id IS NULL) +
(SELECT COUNT(*)
FROM `pelagic-talent-402107.cyclisticbikeshare.united_data_table` 
WHERE end_station_name IS NULL) +
(SELECT COUNT(*)
FROM `pelagic-talent-402107.cyclisticbikeshare.united_data_table` 
WHERE end_station_id IS NULL) +
(SELECT COUNT(*)
FROM `pelagic-talent-402107.cyclisticbikeshare.united_data_table` 
WHERE end_lat IS NULL) +
(SELECT COUNT(*)
FROM `pelagic-talent-402107.cyclisticbikeshare.united_data_table` 
WHERE end_lng IS NULL) AS total_null_count;
```
