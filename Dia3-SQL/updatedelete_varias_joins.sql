-- update com varias joins

update users u
JOIN profiles p ON p.user_id = u.id
SET p.bio = CONCAT(p.bio, ' atualizado') 
where u.first_name  = 'Katelyn';


select u.first_name, p.bio  from users u 
JOIN profiles p ON p.user_id = u.id
where u.first_name  = 'Katelyn';

-- Delete com varias joins

delete p, u from users u
JOIN profiles p ON p.user_id = u.id 
where u.first_name  = 'Katelyn';
