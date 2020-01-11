#!/bin/sh

# Nukes all built docker images
docker stop coregdx-jormungandr-poolcert
docker rm -v coregdx-jormungandr-poolcert
docker rmi coregdx/pool-cert:latest --force