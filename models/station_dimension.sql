WITH BIKE AS (

    SELECT 
    distinct
    start_station_id,
    start_station_name,
    start_lat,
    start_lng

    FROM
    {{ ref('stage_bike') }}
    WHERE RIDE_ID != 'ride_id'

)

select 
* 
from BIKE