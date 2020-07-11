#!/usr/bin/env bash

docker container run \
    --user jetty:jetty \
    -p 80:8080 \
    --rm -d --name hello-world hello_world:$1
