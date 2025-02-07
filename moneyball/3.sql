SELECT year, HR FROM performances
JOIN players ON players.id = performances.player_id
WHERE birth_year =1969 AND first_name = 'Ken' AND last_name = 'Griffey'
ORDER BY year DESC;
