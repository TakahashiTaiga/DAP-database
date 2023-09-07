FROM mysql

# create database
COPY ./ddl/databases /docker-entrypoint-initdb.d
# create tables 
COPY ./ddl/prototype_db /docker-entrypoint-initdb.d

