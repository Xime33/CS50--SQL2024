SELECT first_name, last_name, salaries.salary FROM players
JOIN salaries ON players.id = salaries.player_id
WHERE salaries.year = 2001
ORDER BY salary ASC, first_name ASC, last_name ASC, players.id ASC;

