--Individual Stats: Countries a participant remembered, ordered by most 
--to least commonly remembered by all participants
SELECT c.country_name, COUNT(*) AS remembered_by_number_of_participants
FROM results r
INNER JOIN country c
ON r.country_id = c.country_id
WHERE r.country_id IN (SELECT country_id FROM results WHERE participant_id = 1)
GROUP BY c.country_name
ORDER BY remembered_by_number_of_participants DESC;