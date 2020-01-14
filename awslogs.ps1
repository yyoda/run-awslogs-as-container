$installed = $(docker images awslogs:latest | Measure-Object -Line).Lines -gt 1

if (!$installed) {
    docker build . -t awslogs:latest
}

docker run --rm -it --name awslogs -v ~/.aws:/root/.aws awslogs:latest bin/bash
