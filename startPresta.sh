#!/bin/bash
LOCATION=$(pwd)
echo "$LOCATION/mariadb_data"
if [ -d "$LOCATION/mariadb_data" ] 
then
    echo "Found: $LOCATION/mariadb_data directory"
else
    echo "ERROR: not found $LOCATION/mariadb_data directory\n Creating"
    mkdir mariadb_data
fi
if [ -d "$LOCATION/prestashop_data" ] 
then
    echo "Found: $LOCATION/prestashop_data directory"
else
    echo "ERROR: not found $LOCATION/prestashop_data directory\n Creating"
    mkdir prestashop_data
fi
docker-compose up -d


