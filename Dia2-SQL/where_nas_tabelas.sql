-- where filtra registros
-- = < <= > >= <> !=
-- operadores logicos and e or
select * from users
where id=100;

select * from users
where first_name ='Alika';

select * from users
where id<100;

select * from users
where created_at < '2022-05-30 23:33:41';

select * from users
where created_at < '2022-05-30 23:33:41'
and first_name = 'Aspen';

select * from users
where created_at < '2022-05-30 23:33:41'
or first_name = 'Henrique';

select * from users
where created_at < '2022-05-30 23:33:41'
and first_name = 'Aspen'
and password_hash = 'a_hash';