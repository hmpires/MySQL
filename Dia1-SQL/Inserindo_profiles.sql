use base_de_dados;
insert into profiles
(bio, description, user_id)
select 
concat('Bio de ', first_name), 
concat('Description de', ' ', first_name), 
id 
from users;

select * from profiles;