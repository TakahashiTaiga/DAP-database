CREATE TABLE login_sessions IF NOT EXISTS(
    login_session_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    session_start_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    session_end_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    valid_falg ENUM('true', 'false') DEFAULT 'true',
    FOREIGN KEY user_id(user_id) REFERENCES users(user_id)
);