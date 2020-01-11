#!/bin/sh

# Nukes the container that generated the pool certificates
docker stop coregdx-jormungandr-poolcert
docker rm -v coregdx-jormungandr-poolcert
docker rmi coregdx/pool-cert:latest --force