#!/bin/bash -eux

docker build -f Dockerfile . -t avarf/go-ubuntu
docker push avarf/go-ubuntu:latest