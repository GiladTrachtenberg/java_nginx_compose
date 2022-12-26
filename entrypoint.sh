#!/usr/bin/env bash

java \
    -Ddatasource.dialect="MYSQL" \
    -Ddatasource.url="jdbc:mysql://db:3306/lavagna?useSSL=false" \
    -Ddatasource.username="root" \
    -Ddatasource.password="superpass" \
    -Dspring.profiles.active="dev" \
    -jar lavagna-jetty-console.war --headless
