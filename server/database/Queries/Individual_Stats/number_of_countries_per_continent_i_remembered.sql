--Individual Stats: Number of countries per continent a 
--participant remembered, ordered by continent 
SELECT c.continent, COUNT(*) AS countries_per_continent 
FROM country c 
JOIN results r
ON r.country_id = c.country_id
WHERE participant_id = 1
GROUP BY c.continent
ORDER BY c.continent;