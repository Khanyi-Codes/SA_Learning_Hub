
CREATE TABLE badge_award (
           id BIGSERIAL PRIMARY KEY,
           awarded_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
           learner_id BIGINT NOT NULL REFERENCES learner(id) ON DELETE RESTRICT,
           badge_id BIGINT NOT NULL REFERENCES badge(id) ON DELETE RESTRICT,
           UNIQUE (learner_id, badge_id)
);

