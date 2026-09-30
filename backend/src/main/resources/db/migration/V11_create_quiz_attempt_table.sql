
CREATE TABLE quiz_attempt(
    id BIGSERIAL PRIMARY KEY NOT NULL,
    score int NOT NULL,
    attempted_at TIMESTAMP NOT NULL,
    learner_id BIGINT NOT NULL REFERENCES learner(id)
)