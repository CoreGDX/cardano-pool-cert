#!/bin/sh

# Nukes all built docker images
docker rm -v coregdx/pool-cert:latest
docker rmi coregdx/pool-cert:latest --force