#!/usr/bin/env bash

sudo docker image build \
    --build-arg WAR_PATH=$1 \
    --file hello_world.dockerfile \
    --tag hello_world:$2 .

sudo docker image ls
