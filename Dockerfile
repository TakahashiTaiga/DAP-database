FROM ubuntu/mysql:8.0-22.04_beta

RUN apt update
RUN apt install -y python3
RUN apt install -y python3-pip
RUN pip install mysql-connector-python
RUN pip install pyhocon
RUN pip install python-dotenv