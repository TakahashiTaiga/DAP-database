FROM mysql:8.0

# コンテナ起動時にファイルが実行される。ファイルは昇順で実行される
COPY ./initdb /docker-entrypoint-initdb.d
