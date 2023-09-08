prototype_db
* users
* login_sessions
* attribute_sets
* attributes
* categories
* files
* descriptions

```docker build -t dap-db .```

```docker run --name DAP-database -e MYSQL_ROOT_PASSWORD=[your_pw] -d dap-db:latest```

```docker start DAP-database```

```docker exec -it DAP-database bash```

```mysql -u root -p```