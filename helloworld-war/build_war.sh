#!/usr/bin/env bash

docker container run \
    --volume $(pwd)/war_builder/scripts:/scripts \
    --volume $(pwd)/webapps:/workdir \
    --rm --name webapp_builder war_builder:v1 \
    build
