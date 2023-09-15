FROM mysql:latest

# create database
COPY ./ddl/databases/prototype_db.sql /docker-entrypoint-initdb.d/0_prototype_db.sql

# create tables
COPY ./ddl/prototype_db/users.sql /docker-entrypoint-initdb.d/1_users.sql
COPY ./ddl/prototype_db/login_sessions.sql /docker-entrypoint-initdb.d/2_login_sessions.sql
COPY ./ddl/prototype_db/attribute_sets.sql /docker-entrypoint-initdb.d/3_attribute_sets.sql
COPY ./ddl/prototype_db/attributes.sql /docker-entrypoint-initdb.d/4_attributes.sql
COPY ./ddl/prototype_db/categories.sql /docker-entrypoint-initdb.d/5_categories.sql
COPY ./ddl/prototype_db/files.sql /docker-entrypoint-initdb.d/6_files.sql
COPY ./ddl/prototype_db/descriptions.sql /docker-entrypoint-initdb.d/7_descriptions.sql