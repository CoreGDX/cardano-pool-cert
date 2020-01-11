#!/bin/sh

# Nukes the container that generated the pool key
docker stop coregdx-jormungandr-ownerkey
docker rm -v coregdx-jormungandr-ownerkey
docker rmi coregdx/owner-key:latest --force