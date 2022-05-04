with temp as (
select 
    case when (lead(num) over(order by id) = num and lag(num) over(order by id) = num) 
    then num end as ConsecutiveNums
from Logs)

select distinct ConsecutiveNums from temp 
where ConsecutiveNums is not null
