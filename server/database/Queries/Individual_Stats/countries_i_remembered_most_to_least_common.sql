SELECT country_name
FROM country c JOIN results r
ON c.country_id = r.country_id
WHERE country_name IN 
	(SELECT c.country_name, COUNT(*) AS number_of_guesses
	FROM results r
	INNER JOIN country c
	ON r.country_id = c.country_id
	GROUP BY c.country_name
	ORDER BY number_of_guesses DESC)