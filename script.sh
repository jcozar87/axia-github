#!/bin/bash

while true
do
    ts=$(date +%s)
    x=$(expr $RANDOM % 100)
    echo "Writing ($ts, $x)"
    MYSQL_PWD=$MYSQL_PASSWORD mysql -u $MYSQL_USER -h $MYSQL_SERVER -e "insert into plant1.temp values ($ts, $x);"
    sleep 3
done
