-- Insira 5 usuarios
describe users ;
select * from users u ;
INSERT INTO users (first_name, last_name, email, password_hash)
VALUES 
('Henrique','Pires','h@email.com','h_hash', ROUND(RAND() * 10000)),
('Karina','Pires','k@email.com','k_hash', ROUND(RAND() * 10000)),
('Maitê','Pires','m@email.com','m_hash', ROUND(RAND() * 10000)),
('Jose','Pires','j@email.com','j_hash', ROUND(RAND() * 10000)),
('Lucia','Pires','l@email.com','l_hash', ROUND(RAND() * 10000));

-- insira 5 perfis para usuarios selecionados
select * from profiles p ;
INSERT INTO profiles (bio, description, user_id)
SELECT CONCAT('Bio de ', first_name), CONCAT('Description de ', first_name), id
FROM users ;

-- Insira permissoes (roles) para os usuarios selecionados
SELECT * from roles r ;
SELECT * from users_roles ur ;

INSERT IGNORE INTO users_roles (user_id, role_id)
SELECT u.id, (SELECT id FROM roles ORDER BY RAND() LIMIT 1)
FROM users u;

-- seleciona os 5 ultimos usuarios por ordem decrescente
SELECT id, first_name 
FROM users u
ORDER BY id DESC 
LIMIT 5;

-- Atualize o ultimo usuario inserido
UPDATE users SET
first_name = 'Vitor',
last_name = 'Gava',
email = 'v@email.com',
password_hash = 'v_hash'
WHERE id = 105;

-- remova a permissão de algum usuario
DELETE FROM users_roles 
WHERE user_id = (SELECT id FROM users WHERE email='v@email.com');

-- remova um usuario que tem a permissão "PUT"
DELETE u 
FROM users u 
join users_roles ur on u.id = ur.user_id 
join roles r on r.id = ur.role_id 
WHERE r.name = 'PUT' AND u.id = 2;

-- selecione usuario com perfis e permissoes (obrigatorio)
SELECT u.id, u.first_name, p.bio, r.name
FROM users u 
INNER JOIN profiles p ON u.id = p.user_id 
INNER JOIN users_roles ur ON u.id = ur.user_id 
INNER JOIN roles r ON r.id = ur.role_id;

-- selecione usuario com perfis e permissoes (obrigatorio)
SELECT u.id, u.first_name, p.bio, r.name
FROM users u 
LEFT JOIN users_roles ur ON u.id = ur.user_id 
LEFT JOIN roles r ON ur.role_id = r.id
LEFT JOIN profiles p ON u.id = p.user_id ;

-- Seleciona usuarios com perfis e permissoes ordenado por salario
SELECT u.id, u.first_name, p.bio, r.name, u.salary 
FROM users u 
INNER JOIN profiles p ON u.id = p.user_id 
INNER JOIN users_roles ur ON u.id = ur.user_id 
INNER JOIN roles r ON r.id = ur.role_id 
ORDER BY u.salary DESC;

