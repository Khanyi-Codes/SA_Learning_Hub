
CREATE TABLE lesson(
    id BIGSERIAL PRIMARY KEY ,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    display_order INT NOT NULL,
    subject_id BIGINT NOT NULL REFERENCES subject(id) ON DELETE RESTRICT
);