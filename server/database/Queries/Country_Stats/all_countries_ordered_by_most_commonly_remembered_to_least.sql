SELECT c.country_name, COUNT(*) AS number_of_guesses
FROM results r
INNER JOIN country c
ON r.country_id = c.country_id
GROUP BY c.country_name
ORDER BY number_of_guesses DESC;