#!/bin/bash

set -a
source ./.env
docker exec -i postgres /usr/bin/pg_dump -U $POSTGRES_USER $DUMP_RESTORE_PARAMS $1 > ./backup/$1_$(date +'%Y%m%d').sql
