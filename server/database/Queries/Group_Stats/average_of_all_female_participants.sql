--Group Stats: Average number of countries remembered
--by female participants
SELECT ROUND(AVG(count), 0) AS average_remembered
FROM
	(SELECT COUNT(*) AS Count
	 FROM results r
	 JOIN participant p 
	 ON r.participant_id = p.participant_id
	 WHERE p.gender = 'F'
	 GROUP BY r.participant_id) AS count;