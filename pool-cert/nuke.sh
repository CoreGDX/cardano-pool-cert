#!/bin/sh

# Nukes all built docker images
docker rm -v jormungandr-cert_jormungandr-cert_1
docker rmi jormungandr-cert_jormungandr-cert:latest --force