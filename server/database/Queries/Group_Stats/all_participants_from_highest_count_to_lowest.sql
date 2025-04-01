--Group Stats: Participants listed by name and id with number 
--of countries remembered ordered from highest to lowest count
SELECT r.participant_id, CONCAT (p.first_name,' ',p.last_name) AS participant_name, COUNT (*) AS countries_remembered
FROM results r 
JOIN participant p
ON r.participant_id = p.participant_id
GROUP BY r.participant_id, participant_name
ORDER BY countries_remembered DESC;