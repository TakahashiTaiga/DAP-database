CREATE TABLE descriptions IF NOT EXISTS
(
    description_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    file_id INT UNSIGNED NOT NULL,
    attribute_id INT UNSIGNED NOT NULL,
    content VARCHAR(2048),
    FOREIGN KEY file_id(file_id) REFERENCES files(file_id),
    FOREIGN KEY attribute_id(attribute_id) REFERENCES attributes(attribute_id)
);