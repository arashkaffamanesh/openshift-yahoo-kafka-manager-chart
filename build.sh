#!/bin/bash
set -e
TAG=kubernautslabs/openshift-kafka-manager
docker build -t $TAG .
docker push $TAG:latest
