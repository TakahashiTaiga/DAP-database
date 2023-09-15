if [ ! -e '/check' ]; then
    touch /check
    echo "set up"
    # set envs
    touch .env
    echo MYSQL_USER=root > .env
    echo MYSQL_ROOT_PASSWORD=rhbkdKrg425LgnL- > .env
    echo DB_PORT=3306 > .env
    python3 mysql_auto_build.py
fi
