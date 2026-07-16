
--Insert results 
START TRANSACTION;
ROLLBACK;
COMMIT;
INSERT INTO result (participant_id, country_id)
VALUES 
--example (1, (SELECT country_id FROM country WHERE country_name = 'Argentina')),


--Add participant
START TRANSACTION;
ROLLBACK;
COMMIT;
INSERT INTO participant (first_name, last_name, age, gender, valid_survey)
VALUES ('Victoria', 'Rose', 32, 'F', 'true');

 
 
 



 
 
 
 
 
 