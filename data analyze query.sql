```sql
-- to find the range of start time and end time.
SELECT 
MIN(started_at) AS minimum_start_time,
MAX(started_at) AS maximum_start_time,
MIN(ended_at) AS minimum_end_time,
MAX(ended_at) AS maximum_end_time
FROM `pelagic-talent-402107.cyclisticbikeshare.cleaned_data` ;

--to find number of rides taken by casual and annual member.
SELECT member_casual,
COUNT(*) AS num_of_rides
FROM `pelagic-talent-402107.cyclisticbikeshare.cleaned_data`
GROUP BY member_casual;

--to calculate the max/min ride_length
SELECT 
MIN(ride_length) AS minimum_ride_length,
MAX(ride_length) AS maximum_ride_length
FROM `pelagic-talent-402107.cyclisticbikeshare.cleaned_data`;

--to find the count of rides by days of the week
SELECT DAY_OF_WEEK_STARTED,
COUNT(*) AS num_rides_day_of_week
FROM `pelagic-talent-402107.cyclisticbikeshare.cleaned_data`
GROUP BY DAY_OF_WEEK_STARTED
ORDER BY num_rides_day_of_week DESC;
```
