--Group Stats: Average number of countries remembered
--by all participants
SELECT ROUND(AVG(count), 0) AS average_remembered
FROM
	(SELECT COUNT(*) AS Count
	 FROM results
	 GROUP BY participant_id) AS count;