#!/bin/bash
    docker run \
  --env JAVA_OPTS=-Dhazelcast.local.publicAddress="13.232.230.214:5701"  \
  --publish 5701:5701 \
  --volume /root/docker/hazelcast/hazelcast.xml:/opt/hazelcast/hazelcast.xml \
  -itd \
   hazelcast/hazelcast:3.12.12
