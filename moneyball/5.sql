SELECT teams.name FROM teams
JOIN performances ON performances.team_id = teams.id
JOIN players ON players.id = performances.player_id
WHERE first_name LIKE 'Satchel' AND last_name LIKE 'Paige';
