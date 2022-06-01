-- insert utilizando um SELECT 

INSERT into profiles 
(bio, description, user_id)
select 1,2,3;

INSERT into profiles 
(bio, description, user_id)
select 'bio', 'description', id 
from users;

-- concatenação
INSERT into profiles 
(bio, description, user_id)
select 
concat('Bio de ', first_name),
concat('Description de ', first_name),
id 
from users;

-- DELETE FROM profiles;


