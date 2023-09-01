CREATE TABLE files (
    file_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    lowest_level_category_id INT UNSIGNED NOT NULL,
    file_name TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY lowest_level_category_id(lowest_level_category_id) REFERENCES categories(category_id)
);