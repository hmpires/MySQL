--seleciona o banco
use base_de_dados;
--Mostra tabelas do banco
show tables;
-- descreve as colunas da tabela
describe users;
-- inserir registros na base de dados
insert into users (first_name, last_name,email, password_hash) values
("Luiz", "Miranda", "luiz@email.com","a_hash");
-- inserindo variso registros
insert into users (first_name, last_name,email, password_hash) values
("Helena", "A", "1@email.com","1_hash"),
("Maria", "B", "2@email.com","2_hash"),
("Rosana", "C", "3@email.com","3_hash");