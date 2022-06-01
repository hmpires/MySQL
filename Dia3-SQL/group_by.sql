-- agrupa por determinada coluna

SELECT first_name, COUNT(id) as total  FROM users u 
GROUP BY first_name 
ORDER BY total DESC;

SELECT u.first_name , COUNT(u.id) as total FROM users u 
JOIN profiles p ON p.user_id = u.id 
WHERE u.id IN (17, 14, 55, 67)
GROUP BY first_name 
ORDER BY total DESC
LIMIT 5;
