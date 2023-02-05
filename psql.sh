#!/bin/bash

set -a
source ./.env
docker exec -it postgres bash -c "psql -U $POSTGRES_USER"
