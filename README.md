### DBs and tables
prototype_db
* users
* login_sessions
* attribute_sets
* attributes
* categories
* files
* descriptions

### commands
#### docker compose
```docker compose up -d```

#### docker exec
```docker exec -t dap-database /bin/bash```

### connect mysql
```mysql -u root -p```

### enviroment values
* MYSQL_ROOT_PASSWORD=
* APP_TZ=Asia/Tokyo
* DOCKER_DB_PORT=3306
* EXTERNAL_DB_PORT=13306