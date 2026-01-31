WITH CTE AS (

SELECT 
T.*, w.*
FROM {{ ref('trip_fact') }} t
left join {{ ref('daily_weather') }} w
on t.TRIP_DATE = w.daily_weather





)
select * from CTE