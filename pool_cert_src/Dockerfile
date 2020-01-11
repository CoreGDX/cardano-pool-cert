# Use the pre-compiled version of jormungandr for Alpine
# Dockerfile can be found in https://github.com/CoreGDX/cardano-alpine-base
FROM coregdx/jormungandr:release-0.8.5-rc1
LABEL MAINTAINER CoreGDX-(DavidArayan)
WORKDIR /usr/cardano/jormungandr/bin

# copy the pool owner keys from local into the container. This will
# be needed for creating pool certs and signing them for submission
ADD ./owner_key /usr/cardano/jormungandr/bin/owner_key