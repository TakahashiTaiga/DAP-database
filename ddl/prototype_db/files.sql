CREATE TABLE files IF NOT EXISTS(
    file_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    lowest_level_category_id INT UNSIGNED NOT NULL,
    file_name VARCHAR(1024) NOT NULL,
    file_path VARCHAR(1024) NOT NULL,
    FOREIGN KEY lowest_level_category_id(lowest_level_category_id) REFERENCES categories(category_id)
);