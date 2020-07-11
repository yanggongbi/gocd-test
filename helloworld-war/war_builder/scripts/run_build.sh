#!/usr/bin/env bash

cd /workdir

if [ $1 = "build" ]; then
    echo "Performing WAR Build"
    ant
fi
