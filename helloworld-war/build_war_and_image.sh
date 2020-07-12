#!/usr/bin/env bash

set -e

function buildWar() {
basedir=$(dirname $0)
cd $basedir
docker container run \
    --volume $(pwd)/war_builder/scripts:/scripts \
    --volume $(pwd)/webapps:/workdir \
    --rm --name webapp_builder war_builder:v1 \
    build
}

function buildDockerImage() {
echo "Performing Image Build"
war_path="webapps/build/helloworld-0.1-dev.war"
docker image build \
    --build-arg WAR_PATH=${war_path} \
    --file hello_world.dockerfile \
    --tag hello_world:latest .

docker image ls
}

buildWar
buildDockerImage
