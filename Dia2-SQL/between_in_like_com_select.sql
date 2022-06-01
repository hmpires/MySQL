-- between seleciona um range de dados
select * from users
where 
created_at between '2022-05-30 14:33:41'
and '2022-05-30 23:33:41';

select * from users
where 
created_at between '2022-05-30 14:33:41'
and '2022-05-30 23:33:41'
and id between 1 and 16;

-- in seleciona elementos entre os valores enviados
select * from users
where id in (1, 10, 15, 20)
and first_name in ('mayo', ' rocha');

-- like (parecido)
-- % qualquer coisa
-- _ um caractere
select * from users
where first_name  like '%a';

select * from users
where first_name  like '%o';

select * from users
where first_name  like 'h%';

select * from users
where first_name  like 'he%';

select * from users
where first_name  like 'he%a';

select * from users
where first_name  like 'j_cob';

select * from users
where first_name  like '_____';
