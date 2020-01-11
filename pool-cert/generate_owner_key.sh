#!/bin/sh

# Remove any local-generated folders from previous runs
rm -rf owner_key
mkdir -p owner_key

# Bring up our container using docker in a detached mode
docker-compose -f generate_owner_key.yml up -d

# this was a temporary thing, delete it
rm -rf owner_key

# At this point, everything we need is inside the docker container
# so we start copying them out. Check poolkey.yml for details
docker cp coregdx-jormungandr-ownerkey:/usr/cardano/jormungandr/bin/owner_key owner_key

# bring down the container and nuke/remove it from the host
sh clean.sh