#!/bin/sh
#docker stop hello-production
docker run --rm -p 8000:80 --name hello-production prodock0/hello-world:v1
