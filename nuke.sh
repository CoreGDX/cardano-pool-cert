#!/bin/sh

# Nukes all containers and deletes all generated files
echo ""
echo " ------------------------------- WARNING ------------------------------- "
echo " - This operation will delete all local generated files and folders    - "
echo " - Backup any files, folders or generated keys before running this     - "
echo " - operation                                                           - "
echo " ----------------------------------------------------------------------- "
echo ""
echo "Continue Nuke (y/n)? "
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
    sh owner_key_src/nuke.sh
    sh pool_cert_src/nuke.sh
    rm -rf owner_key
    rm -rf pool_cert
fi