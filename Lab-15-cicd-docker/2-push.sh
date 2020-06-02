#!/bin/bash
docker tag hello-world:latest prodock0/hello-world:v2
docker push prodock0/hello-world:v2
