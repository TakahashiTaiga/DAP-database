FROM mysql

# ファイルが昇順で実行される。コピーするときに、実行される順番をファイル名の頭につける
# create database
COPY ./ddl/databases/prototype_db.sql /docker-entrypoint-initdb.d/0_prototype_db.sql
# create tables 
COPY ./ddl/prototype_db /docker-entrypoint-initdb.d
