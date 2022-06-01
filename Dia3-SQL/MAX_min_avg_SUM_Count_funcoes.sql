-- agregações

select 
MAX(u.salary) as max_salary,
MIN(u.salary) as min_salary,
AVG(u.salary) as avg_salary,
SUM(u.salary) as sum_salary,
COUNT(u.salary) as count_salary
from users u 
WHERE u.first_name = 'Carly';

select
u.first_name ,
MAX(u.salary) as max_salary,
MIN(u.salary) as min_salary,
AVG(u.salary) as avg_salary,
SUM(u.salary) as sum_salary,
COUNT(u.id) as total
from users u 
left join profiles p on p.user_id = u.id 
-- where u.id in (17, 21, 45, 99)
group by u.first_name 
order by total DESC ;
-- limit 5;




