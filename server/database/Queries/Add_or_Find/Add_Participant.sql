--Check to see if participant was added
SELECT *
FROM participant;

--Use these to manage adding participants
START TRANSACTION; 			--Run this first
ROLLBACK;					--Run this to undo a change
COMMIT;						--Run this to lock in changes

--Run this to add a participant, add data for each field
--first_name (ex: 'Victoria', last_name (ex: 'Rose'), age (ex: 32), gender (ex: 'F'), valid_survey (ex: true)
INSERT INTO participant (first_name, last_name, age, gender, valid_survey)
VALUES ('', '', , '', true);