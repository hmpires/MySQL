-- seleciona colunas
SELECT * FROM users u ;
SELECT email from users u ;
SELECT email, id from users u ;
SELECT email, id, first_name from users u ;
SELECT 
email as e, id as i, first_name as fn 
from users u ;
SELECT 
u.email, u.id, u.first_name 
from users u ;
