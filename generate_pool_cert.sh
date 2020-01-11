#!/bin/sh

# Remove any local-generated folders from previous runs
rm -rf pool_cert

# make a directory for the owner keys if not available
mkdir -p owner_key

# copy the kets into the container folder, this will be deleted later
cp -a owner_key pool_cert_src/owner_key

# Bring up our container using docker in a detached mode
docker-compose -f pool_cert_src/live.yml up -d

# delete the copied keys as they are now inside the container
rm -rf pool_cert_src/owner_key

# At this point, everything we need is inside the docker container
# so we start copying them out. Check poolgen.yml for details
docker cp coregdx-jormungandr-poolcert:/usr/cardano/jormungandr/bin/pool_cert pool_cert

# bring down the container and nuke/remove it from the host
sh pool_cert_src/nuke.sh