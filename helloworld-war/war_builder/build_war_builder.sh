#!/usr/bin/env bash

sudo docker image build \
    --file war_builder.dockerfile \
    --tag war_builder:v1 .

sudo docker image ls
