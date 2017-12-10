#!/bin/bash

IMAGE=ociotec/docker-qt-builder
VERSION=1.0.0

docker build --tag ${IMAGE}:${VERSION} --tag ${IMAGE}:latest .
docker push ${IMAGE}:${VERSION}
docker push ${IMAGE}:latest
