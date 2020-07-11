#!/usr/bin/env bash

docker image build \
    --file war_builder.dockerfile \
    --tag war_builder:v1 .

docker image ls
