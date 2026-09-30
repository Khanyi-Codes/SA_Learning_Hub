
CREATE TABLE enrollment(
    id BIGSERIAL PRIMARY KEY,
    enrolled_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    learner_id BIGINT NOT NULL REFERENCES learner(id) ON DELETE RESTRICT ,
    subject_id BIGINT NOT NULL REFERENCES subject(id) ON DELETE RESTRICT,
    UNIQUE (learner_id, subject_id)
    );
