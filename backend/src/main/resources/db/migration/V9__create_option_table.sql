
CREATE TABLE option(
    id BIGSERIAL PRIMARY KEY,
    option_text VARCHAR(255) NOT NULL,
    is_correct BOOLEAN NOT NULL,
    question_id BIGINT NOT NULL REFERENCES question(id) ON DELETE RESTRICT
);