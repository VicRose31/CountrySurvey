SELECT c.country_name, COUNT(*) AS total_number_of_guesses
FROM results r
INNER JOIN country c
ON r.country_id = c.country_id
WHERE r.country_id IN (SELECT country_id FROM results WHERE participant_id = 1)
GROUP BY c.country_name
ORDER BY total_number_of_guesses DESC;