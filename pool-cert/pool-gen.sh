#!/bin/sh

# Remove any local-generated folders from previous runs
rm -rf pool-data

# Create a local folder to be used for copying generated data
# from inside the docker container
mkdir pool-data

# Bring up our container using docker in a detached mode
docker-compose -f live.yml up -d

# At this point, everything we need is inside the docker container
# so we start copying them out. Check live.yml for details
docker cp coregdx-jormungandr-poolcert:/usr/cardano/jormungandr/bin/stake_pool_vrf.prv pool-data/stake_pool_vrf.prv
docker cp coregdx-jormungandr-poolcert:/usr/cardano/jormungandr/bin/stake_pool_vrf.pub pool-data/stake_pool_vrf.pub
docker cp coregdx-jormungandr-poolcert:/usr/cardano/jormungandr/bin/stake_pool_kes.prv pool-data/stake_pool_kes.prv
docker cp coregdx-jormungandr-poolcert:/usr/cardano/jormungandr/bin/stake_pool_kes.pub pool-data/stake_pool_kes.pub

# bring down the container and nuke/remove it from the host
sh nuke.sh