prototype_db
* users
* login_sessions
* attribute_sets
* attributes
* categories
* files
* descriptions

create image
```docker image build -t dap-db .```

docker run
```docker run --name DAP-database -e MYSQL_ROOT_PASSWORD=[your_pw] -d dap-db:latest```

いらないはず
```docker start DAP-database```

docker exec
```docker exec -it DAP-database bash```

connect mysql
```mysql -u root -p```