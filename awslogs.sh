#!/bin/bash

count=$(docker images awslogs:latest | wc -l | tr -d ' ')

if [ $count -ne 2 ]; then
    docker build -t awslogs:latest .
fi

docker run --rm -it --name awslogs -v ~/.aws:/root/.aws awslogs:latest bin/bash
