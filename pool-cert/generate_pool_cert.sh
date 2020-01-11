#!/bin/sh

# Remove any local-generated folders from previous runs
rm -rf pool_cert

# make a directory for the owner keys if not available
mkdir -p owner_key

# Bring up our container using docker in a detached mode
docker-compose -f generate_pool_cert.yml up -d

# At this point, everything we need is inside the docker container
# so we start copying them out. Check poolgen.yml for details
docker cp coregdx-jormungandr-poolcert:/usr/cardano/jormungandr/bin/pool_cert pool_cert

# bring down the container and nuke/remove it from the host
sh clean.sh