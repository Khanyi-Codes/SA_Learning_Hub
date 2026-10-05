
CREATE TABLE quiz_attempt (
                              id BIGSERIAL PRIMARY KEY,
                              score INT NOT NULL,
                              attempted_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                              learner_id BIGINT NOT NULL REFERENCES learner(id) ON DELETE RESTRICT,
                              quiz_id BIGINT NOT NULL REFERENCES quiz(id) ON DELETE RESTRICT,
                              UNIQUE (learner_id, quiz_id)
);