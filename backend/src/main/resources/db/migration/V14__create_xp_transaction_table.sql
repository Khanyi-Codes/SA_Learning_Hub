
CREATE TABLE xp_transaction (
                                id BIGSERIAL PRIMARY KEY,
                                amount INT NOT NULL,
                                reason VARCHAR(255) NOT NULL,
                                created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                learner_id BIGINT NOT NULL REFERENCES learner(id) ON DELETE RESTRICT
);