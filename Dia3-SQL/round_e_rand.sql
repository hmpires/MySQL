-- Configura um salario aleatorio para os users
ALTER TABLE base_de_dados.users CHANGE Salary salary decimal(15,2) NULL;

update users set salary = round(rand() * 10000, 2);

select salary from users where 
salary  between 1000 and 1500
order by salary asc;