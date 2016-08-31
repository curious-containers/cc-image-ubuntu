#!/usr/bin/env bash

REGISTRY_URL=docker.io/curiouscontainers/cc-image-ubuntu

docker pull docker.io/ubuntu:xenial
docker pull ${REGISTRY_URL}
docker build --no-cache=true -t ${REGISTRY_URL} .
docker push ${REGISTRY_URL}
