--Country Stats: Countries listed by name with percent of 
--participants that remembered each country
SELECT c.country_name, ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM participant))AS percent_of_participants
FROM results r
INNER JOIN country c
ON r.country_id = c.country_id
GROUP BY c.country_name
ORDER BY percent_of_participants DESC;