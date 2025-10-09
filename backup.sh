#!/bin/bash

date

# Exit immediately if a command exits with a non-zero status.
set -e

source .env

BACKUP_DIR="backups"
mkdir -p "${BACKUP_DIR}"

# Dump the PostgreSQL database and compress it.
docker compose exec -T authentik-psql pg_dump -U authentik -d authentik | gzip > "${BACKUP_DIR}/psql_authentik_$(date +%F_%H-%M-%S).sql.gz"
