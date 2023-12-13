```sql
CREATE TABLE cyclisticbikeshare.cleaned_data
AS
SELECT 
ride_id,
rideable_type,
started_at,
ended_at,
EXTRACT(DATE FROM started_at) AS start_date,
EXTRACT(TIME FROM started_at) AS start_time,
EXTRACT(DATE FROM ended_at) AS end_date,
EXTRACT(TIME FROM ended_at) AS end_time,
CASE CAST(started_at AS STRING) 
WHEN '01' then 'JANUARY'
WHEN '02' then 'FEBRAURY'
WHEN '02' then 'FEBRUARY'
WHEN '03' then 'MARCH'
WHEN '04' then 'APRIL'
WHEN '05' then 'MAY'
WHEN '06' then 'JUNE'
WHEN '07' then 'JULY'
WHEN '08' then 'AUGUST'
WHEN '09' then 'SEPTEMBER'
WHEN '10' then 'OCTOBER'
WHEN '11' then 'NOVEMBER'
WHEN '12' then 'DECEMBER'
END AS start_month,
CASE CAST(ended_at AS STRING) 
WHEN '01' then 'JANUARY'
WHEN '02' then 'FEBRAURY'
WHEN '02' then 'FEBRUARY'
WHEN '03' then 'MARCH'
WHEN '04' then 'APRIL'
WHEN '05' then 'MAY'
WHEN '06' then 'JUNE'
WHEN '07' then 'JULY'
WHEN '08' then 'AUGUST'
WHEN '09' then 'SEPTEMBER'
WHEN '10' then 'OCTOBER'
WHEN '11' then 'NOVEMBER'
WHEN '12' then 'DECEMBER'
END AS end_month,
CASE EXTRACT(DAYOFWEEK FROM started_at)
WHEN 1 then 'SUNDAY'
WHEN 2 then 'MONDAY'
WHEN 3 then 'TUESDAY'
WHEN 4 then 'WEDNESDAY'
WHEN 5 then 'THURSDAY'
WHEN 6 then 'FRIDAY'
WHEN 7 then 'SATURDAY'
END AS DAY_OF_WEEK_STARTED,
CASE EXTRACT(DAYOFWEEK FROM ended_at)
WHEN 1 then 'SUNDAY'
WHEN 2 then 'MONDAY'
WHEN 3 then 'TUESDAY'
WHEN 4 then 'WEDNESDAY'
WHEN 5 then 'THURSDAY'
WHEN 6 then 'FRIDAY'
WHEN 7 then 'SATURDAY'
END AS DAY_OF_WEEK_ENDED,
DATETIME_DIFF(ended_at, started_at, minute) AS ride_length,
start_station_name,
start_station_id,
end_station_name,
end_station_id,
start_lat,
start_lng,
end_lat,
end_lng,
member_casual
FROM `pelagic-talent-402107.cyclisticbikeshare.united_data_table` 
WHERE 
(DATETIME_DIFF(ended_at, started_at, minute)>=1) AND
(DATETIME_DIFF(ended_at, started_at, minute)<1440) AND
(start_station_name IS NOT NULL AND end_station_name IS NOT NULL) AND
(started_at < ended_at) AND
(start_lat IS NOT NULL) AND
(start_lng IS NOT NULL) AND
(end_lat IS NOT NULL) AND
(end_lng IS NOT NULL);
```
