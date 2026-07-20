--Use these to manage adding results
START TRANSACTION;
ROLLBACK;
COMMIT;

--Use this to add results
--example (1, (SELECT country_id FROM country WHERE country_name = '')),
INSERT INTO results (participant_id, country_id)
VALUES 


;

--Check that countries were added to results
SELECT *
FROM results
WHERE participant_id = 90;


--Check participant id
SELECT *
FROM participant;

