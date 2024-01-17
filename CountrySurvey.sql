START TRANSACTION;

CREATE TABLE country (
    country_id serial,
    country_name varchar(50) NOT NULL,
    continent varchar(20) NOT NULL,
    CONSTRAINT PK_country PRIMARY KEY(country_id)
);

CREATE TABLE participant (
    participant_id serial,
    first_name varchar(20) NOT NULL,
    last_name varchar(30) NOT NULL,
    age int NULL,
    gender varchar(6) NULL,
    valid_survey boolean NOT NULL CONSTRAINT DF_valid_survey DEFAULT (TRUE),
    CONSTRAINT PK_participant PRIMARY KEY(participant_id)
);

CREATE TABLE response (
    participant_id int NOT NULL, --foreign key
    country_id int NOT NULL,     --foreign key
    CONSTRAINT FK_response_participant_id FOREIGN KEY(participant_id) REFERENCES participant(participant_id),
    CONSTRAINT FK_response_country_id FOREIGN KEY(country_id) REFERENCES country(country_id)
);

COMMIT;