#!/bin/bash

set -a
source ./.env
# docker cp $2 postgres:/tmp_backup.sql
# docker exec -i postgres /usr/bin/pg_restore -U $DB_USER -w -v -O -d $1 /tmp_backup.sql
# docker exec -i postgres bash -c "rm /tmp_backup.sql"
docker exec -i postgres /usr/bin/pg_restore -U $DB_USER -w -v -O -d $1 < $2
