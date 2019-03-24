#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE oai_usecase;
    GRANT ALL PRIVILEGES ON DATABASE oai_usecase TO oneai_db;
EOSQL

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE oai_build;
    GRANT ALL PRIVILEGES ON DATABASE oai_build TO oneai_db;
EOSQL

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE oai_environment;
    GRANT ALL PRIVILEGES ON DATABASE oai_environment TO oneai_db;
EOSQL

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE oai_datasource;
    GRANT ALL PRIVILEGES ON DATABASE oai_datasource TO oneai_db;
EOSQL

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE oai_components;
    GRANT ALL PRIVILEGES ON DATABASE oai_components TO oneai_db;
EOSQL

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE oai_keycloak;
    GRANT ALL PRIVILEGES ON DATABASE oai_keycloak TO oneai_db;
EOSQL

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE oai_lifecycle;
    GRANT ALL PRIVILEGES ON DATABASE oai_lifecycle TO oneai_db;
EOSQL
