#!/bin/sh

# Remove any local-generated folders from previous runs
rm -rf owner_key

# Bring up our container using docker in a detached mode
docker-compose -f owner_key_src/live.yml up -d

# At this point, everything we need is inside the docker container
# so we start copying them out. Check poolkey.yml for details
docker cp coregdx-jormungandr-ownerkey:/usr/cardano/jormungandr/bin/owner_key owner_key

# bring down the container and nuke/remove it from the host
sh owner_key_src/nuke.sh