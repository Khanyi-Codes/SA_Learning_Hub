
CREATE TABLE attempt_answer (
                                id BIGSERIAL PRIMARY KEY,
                                quiz_attempt_id BIGINT NOT NULL REFERENCES quiz_attempt(id) ON DELETE RESTRICT,
                                question_id BIGINT NOT NULL REFERENCES question(id) ON DELETE RESTRICT,
                                option_id BIGINT NOT NULL REFERENCES option(id) ON DELETE RESTRICT,
                                UNIQUE (quiz_attempt_id, question_id)
);