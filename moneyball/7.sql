SELECT players.first_name, players.last_name FROM players
JOIN salaries ON salaries.player_id = players.id
ORDER BY salary DESC
LIMIT 1;
