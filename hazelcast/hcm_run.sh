#!/bin/bash
docker run \
 --detach \
 --publish 8081:8080 \
 -it \
 hazelcast/management-center:3.12.12
