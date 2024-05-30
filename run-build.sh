#!/bin/bash
# run-build.sh
# 2024-05-29 | CR
DOCKER_IMAGE_NAME="pyreqwest_impersonate_test"
docker buildx build --platform linux/amd64 -t docker-image:${DOCKER_IMAGE_NAME} .
