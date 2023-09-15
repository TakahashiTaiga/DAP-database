FROM ubuntu/mysql:8.0-22.04_beta

# create databases
COPY ./src/ddl/databases/prototype_db.sql /docker-entrypoint-initdb.d/prototype_db.sql
COPY ./src/container_init.sh /docker-entrypoint-initdb.d/container_init.sh
COPY ./src /home

# install libraries
RUN apt update
RUN apt install -y python3
RUN apt install -y python3-pip
RUN pip install mysql-connector-python
RUN pip install pyhocon
RUN pip install python-dotenv