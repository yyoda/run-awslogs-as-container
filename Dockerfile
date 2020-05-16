FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    git \
    vim \
    libicu[0-9][0-9]

RUN apt-get install -y software-properties-common \
 && add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update && apt-get install -y \
    python3.7 \
    python3.7-dev \
    python3-pip
RUN pip3 install awslogs

RUN echo "export LANG=C.UTF-8" >> ~/.bashrc
