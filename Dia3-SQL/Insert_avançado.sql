-- insere dados na tabela roles
insert into roles (name)
values 
('Post'),('Put'),('Delete'),('Get');

select * from roles;

insert into users_roles (user_id, role_id)
values
(18, 4);

-- insert select
insert into users_roles (user_id, role_id)
select u.id, (select id from roles order by RAND() limit 1) 
from users u ;

SELECT * from users_roles ur ;

insert ignore into users_roles (user_id, role_id)
select u.id, (select id from roles order by RAND() limit 1) 
from users u 
order by RAND() limit 5 ;

SELECT * from users_roles ur ;


