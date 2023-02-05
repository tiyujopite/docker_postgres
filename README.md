# docker_postgres
Postgresql service and tools for DEV environment.

### Init postgresql
```sh
cp .env.sample .env
sh start.sh
```

### Start psql session with postgres user
```sh
sh psql.sh
# Example
postgres=# CREATE DATABASE mydatabase OWNER myuser;
```

### Create backup (File saved in backup folder)
```sh
sh pg_dump.sh <database_name>
```

### Restore backup (DDBB must be created before)
```sh
sh pg_restore.sh <database_name> <path/to/backup.sql>
```