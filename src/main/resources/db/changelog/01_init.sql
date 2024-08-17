CREATE TABLE profile
(
    id                    BIGINT PRIMARY KEY,
    user_name             VARCHAR(255),
    correct_answers_count INTEGER
);

CREATE TABLE profile_passed_questions
(
    profile_id       BIGINT NOT NULL,
    passed_questions INTEGER,
    CONSTRAINT fk_profile_passed_questions_on_profile FOREIGN KEY (profile_id) REFERENCES profile (id)
);

CREATE TABLE question
(
    id       INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    question VARCHAR(255),
    answer   VARCHAR(255),
    option1  VARCHAR(255),
    option2  VARCHAR(255),
    option3  VARCHAR(255),
    option4  VARCHAR(255)
);

