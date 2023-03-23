#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE USER foo;
	CREATE DATABASE foodb;
	GRANT ALL PRIVILEGES ON DATABASE foodb TO foo;
EOSQL
