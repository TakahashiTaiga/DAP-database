CREATE TABLE attribute_sets IF NOT EXISTS(
    attribute_set_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    owner_id INT UNSIGNED NOT NULL,
    attribute_set_name VARCHAR(256) NOT NULL,
    FOREIGN KEY owner_id(owner_id) REFERENCES users(user_id)
);