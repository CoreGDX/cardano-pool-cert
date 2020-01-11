#!/bin/sh

# Nukes all containers and deletes all generated files
sh owner_key_src/nuke.sh
sh pool_cert_src/nuke.sh
rm -rf owner_key
rm -rf pool_cert