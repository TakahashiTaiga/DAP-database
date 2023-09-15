CREATE TABLE categories IF NOT EXISTS(
    category_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    owner_id INT UNSIGNED NOT NULL,
    attribute_set_id INT UNSIGNED NOT NULL,
    parernt_category_id INT UNSIGNED,
    category_name VARCHAR(256) NOT NULL,
    lowest_level_category_flag ENUM('true', 'false') DEFAULT 'false' NOT NULL,
    full_category_phrase VARCHAR(1024) NOT NULL,
    FOREIGN KEY owner_id(owner_id) REFERENCES users(user_id),
    FOREIGN KEY attribute_set_id(attribute_set_id) REFERENCES attribute_sets(attribute_set_id)
);