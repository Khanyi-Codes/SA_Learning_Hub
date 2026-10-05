
CREATE TABLE progress (
                          id BIGSERIAL PRIMARY KEY,
                          status VARCHAR(20) NOT NULL DEFAULT 'not_started' CHECK (status IN ('not_started', 'in_progress', 'completed')),
                          started_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                          completed_at TIMESTAMP,
                          time_spent_seconds INT NOT NULL DEFAULT 0,
                          learner_id BIGINT NOT NULL REFERENCES learner(id) ON DELETE RESTRICT,
                          lesson_id BIGINT NOT NULL REFERENCES lesson(id) ON DELETE RESTRICT
);