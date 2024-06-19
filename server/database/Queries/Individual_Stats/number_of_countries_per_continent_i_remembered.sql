SELECT c.continent, COUNT(*) AS countries_per_continent, 
FROM results r
JOIN country c
ON r.country_id = c.country_id
WHERE participant_id = 34
GROUP BY c.continent
ORDER BY c.continent;