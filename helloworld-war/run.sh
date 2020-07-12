#!/usr/bin/env bash

function startContainer() {
if [[ "$(docker ps -a | grep hello-world)" ]]; then
    echo "pls stop hello-world first"
else
    echo "starting hello-world"
    docker container run \
        --user jetty:jetty \
        -p 8080:8080 \
        --rm -d --name hello-world hello_world:latest
fi
}

function stopContainer() {
if [[ "$(docker ps | grep hello-world)" ]]; then
    echo "stopping hello-world"
    docker stop hello-world
else
    echo "hello-world is not running"
fi
}

function run() {
    stopContainer
    startContainer
}

run
