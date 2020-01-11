#!/bin/sh

# This is a helper script that generates a pool all in one pass
echo "Generating Pool Keys and Certificates using Docker"
sh generate_owner_key.sh
sh generate_pool_cert.sh