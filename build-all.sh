#!/bin/bash

USERNAME=theronic
IMAGE_PATH=arm
IMAGE_NAME=$IMAGE_PATH
IMAGE=$USERNAME/rust-crosscompiler-arm

RUST_CHANNEL=nightly

docker build -t $IMAGE:$RUST_CHANNEL $IMAGE_PATH

docker push $IMAGE
