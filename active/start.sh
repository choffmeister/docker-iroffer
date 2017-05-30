#!/bin/sh

# when using docker-machine (if using docker directly, use the
# external ip of the docker host)
docker run \
  -d \
  -p 6667:6667 \
  -p 50000-50010:50000-50010 \
  --env EXTERNAL_IP=$(docker-machine ip default) \
  --name iroffer_active \
  iroffer_active
