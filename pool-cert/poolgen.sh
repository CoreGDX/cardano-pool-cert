#!/bin/sh

# Remove any local-generated folders from previous runs
rm -rf poolgen

# Bring up our container using docker in a detached mode
docker-compose -f live.yml up -d

# At this point, everything we need is inside the docker container
# so we start copying them out. Check live.yml for details
docker cp coregdx-jormungandr-poolcert:/usr/cardano/jormungandr/bin/poolgen poolgen

# bring down the container and nuke/remove it from the host
sh nuke.sh