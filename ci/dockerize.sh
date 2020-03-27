#!/bin/bash

DOCKER_REPO=nandotorres/docker-mysql-spring-boot-example

read -r -p 'Give a version tag for this Docker image [latest]: ' VERSION
docker build . -t ${DOCKER_REPO}:"${VERSION:-latest}" --no-cache

docker push ${DOCKER_REPO}:"${VERSION:-latest}"
