#!/bin/sh

# when using docker-machine (if using docker directly, use the
# external ip of the docker host)
docker run \
  -d \
  -p 6668:6667 \
  -p 50011-50020:50011-50020 \
  --env EXTERNAL_IP=$(docker-machine ip default) \
  --name iroffer_passive \
  iroffer_passive
