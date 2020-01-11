#!/bin/sh

# Remove any local-generated folders from previous runs
rm -rf poolkey

# Bring up our container using docker in a detached mode
docker-compose -f poolkey.yml up -d

# At this point, everything we need is inside the docker container
# so we start copying them out. Check live.yml for details
docker cp coregdx-jormungandr-poolkey:/usr/cardano/jormungandr/bin/poolkey poolkey

# bring down the container and nuke/remove it from the host
sh nuke.sh