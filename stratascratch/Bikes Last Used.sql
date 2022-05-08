select bike_number, MAX(end_time) 
from dc_bikeshare_q1_2012
GROUP BY 1;

