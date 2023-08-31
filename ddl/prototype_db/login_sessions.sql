CREATE TABLE login_sessions (
    login_session_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    session_start_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    session_end_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    invalid_falg ENUM('true', 'false') DEFAULT 'false',
    FOREIGN KEY user_id(user_id) REFERENCES users(user_id)
);