CREATE TABLE attributes (
    attribute_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    attribute_set_id INT UNSIGNED NOT NULL,
    attribute_name VARCHAR(256) NOT NULL,
    FOREIGN KEY attribute_set_id(attribute_set_id) REFERENCES attribute_sets(attribute_set_id)
);