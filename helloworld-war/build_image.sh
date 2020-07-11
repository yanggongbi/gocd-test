#!/usr/bin/env bash

docker image build \
    --build-arg WAR_PATH=$1 \
    --file hello_world.dockerfile \
    --tag hello_world:$2 .

docker image ls
