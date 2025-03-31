CREATE TABLE IF NOT EXISTS users
(
    id         BIGINT AUTO_INCREMENT PRIMARY KEY,
    email      VARCHAR(255) NOT NULL UNIQUE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS retrospects
(
    id         BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id    BIGINT NOT NULL,
    purpose    TEXT,
    content    TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS feedbacks
(
    id             BIGINT AUTO_INCREMENT PRIMARY KEY,
    retrospect_id  BIGINT NOT NULL,
    summary        TEXT,
    strength       TEXT,
    weakness       TEXT,
    keep_doing     TEXT,
    recommendation TEXT,
    created_at     DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (retrospect_id) REFERENCES retrospects (id) ON DELETE CASCADE
);
