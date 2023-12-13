```sql
-- To create a new table by combining data from all different tables into one
CREATE TABLE cyclisticbikeshare.united_data_table
AS
SELECT *
FROM `pelagic-talent-402107.cyclisticbikeshare.202210_data`
UNION ALL
SELECT *
FROM `pelagic-talent-402107.cyclisticbikeshare.202211_data`
UNION ALL
SELECT *
FROM `pelagic-talent-402107.cyclisticbikeshare.202212_data`
UNION ALL
SELECT *
FROM `pelagic-talent-402107.cyclisticbikeshare.202301_data`
UNION ALL
SELECT *
FROM `pelagic-talent-402107.cyclisticbikeshare.202302_data`
UNION ALL
SELECT *
FROM `pelagic-talent-402107.cyclisticbikeshare.202303_data`
UNION ALL
SELECT *
FROM `pelagic-talent-402107.cyclisticbikeshare.202304_data`
UNION ALL
SELECT *
FROM `pelagic-talent-402107.cyclisticbikeshare.202305_data`
UNION ALL
SELECT *
FROM `pelagic-talent-402107.cyclisticbikeshare.202306_1_data`
UNION ALL
SELECT *
FROM `pelagic-talent-402107.cyclisticbikeshare.202306_2_data`
UNION ALL
SELECT *
FROM `pelagic-talent-402107.cyclisticbikeshare.202307_1_data`
UNION ALL
SELECT *
FROM `pelagic-talent-402107.cyclisticbikeshare.202307_2_data`
UNION ALL
SELECT *
FROM `pelagic-talent-402107.cyclisticbikeshare.202307_3_data`
UNION ALL
SELECT *
FROM `pelagic-talent-402107.cyclisticbikeshare.202308_1_data`
UNION ALL
SELECT *
FROM `pelagic-talent-402107.cyclisticbikeshare.202308_2_data`
UNION ALL
SELECT *
FROM `pelagic-talent-402107.cyclisticbikeshare.202309_1_data`
UNION ALL
SELECT *
FROM `pelagic-talent-402107.cyclisticbikeshare.202309_2_data`
UNION ALL
SELECT *
FROM `pelagic-talent-402107.cyclisticbikeshare.202310_data`
-- ordered the combined table to arrange started_at in ascending order
ORDER BY started_at ASC;
```
