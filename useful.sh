#!/usr/bin/env bash

function mybuild() {
    echo 'building...'
    javac -cp ".:servlet-api.jar" -d WEB-INF/classes myuser/test/main.java
    echo 'done'
}

function mycopy() {
    echo 'copying...'
    cd ..
    rm -rf /usr/local/tomcat/webapps/code
    cp -r code /usr/local/tomcat/webapps
    cd -
    echo 'done'
}

function mygradle() {
    docker run --rm -it -v "$PWD":/home/gradle/project -w /home/gradle/project gradle gradle "$1"
}
