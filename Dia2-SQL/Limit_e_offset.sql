-- limit limita a qtd de valores
-- offset desloca o cursor para exibir os resultados
SELECT id, first_name, email as uemail
FROM users u
WHERE id BETWEEN 10 AND 35
ORDER BY first_name DESC
LIMIT 2;

SELECT id, first_name, email as uemail
FROM users u
WHERE id BETWEEN 10 AND 35
ORDER BY id ASC
LIMIT 2 OFFSET 4;

-- limit 'offset','limit',
SELECT id, first_name, email as uemail
FROM users u
WHERE id BETWEEN 10 AND 35
ORDER BY id ASC
LIMIT 6,3;


