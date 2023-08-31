CREATE TABLE users {
    user_id int UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    user_name varchar(265) NOT NULL,
    email_address varchar(265) NOT NULL,
    user_password varchar(1024) NOT NULL
}