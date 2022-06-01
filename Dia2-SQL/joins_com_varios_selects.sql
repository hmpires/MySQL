-- uniao pré join para selects complexos
select u.id, p.id, p.bio, u.first_name 
from users u , profiles p 
where u.id = p.user_id ;

-- innerjoin para relacionamentos
select u.id, p.id, p.bio, u.first_name 
from users u
inner join profiles p 
on u.id = p.user_id
where u.first_name like '%a'
order by u.first_name DESC 
limit 5;

-- leftjoin para relacionamentos
select u.id, p.id, p.bio, u.first_name 
from users u
left join profiles p 
on u.id = p.user_id;

-- rightjoin para relacionamentos
select u.id, p.id, p.bio, u.first_name 
from users u
right join profiles p 
on u.id = p.user_id;



