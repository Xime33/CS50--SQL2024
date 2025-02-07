SELECT messages.to_user_id FROM users
JOIN messages ON messages.to_user_id = users.id
WHERE from_user_id = (SELECT id FROM users WHERE username = 'creativewisdom377')
GROUP BY messages.to_user_id
ORDER BY COUNT(messages.to_user_id) DESC LIMIT 3;
