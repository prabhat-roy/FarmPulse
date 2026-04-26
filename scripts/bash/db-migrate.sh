#!/usr/bin/env bash
set -euo pipefail
PG_DSN=${PG_DSN:-postgres://farmpulse:${PG_PASSWORD}@localhost:5432/farmpulse}
for schema_dir in databases/postgres/*/; do
  schema=$(basename "$schema_dir")
  flyway \
    -url="jdbc:${PG_DSN#postgres://}" \
    -locations=filesystem:"$schema_dir" \
    -baselineOnMigrate=true \
    -schemas="$schema" \
    migrate
done
