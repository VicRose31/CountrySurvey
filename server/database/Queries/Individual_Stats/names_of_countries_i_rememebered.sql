SELECT c.country_name
FROM results r
INNER JOIN country c
ON r.country_id = c.country_id
WHERE participant_id = 1
ORDER BY c.country_name;