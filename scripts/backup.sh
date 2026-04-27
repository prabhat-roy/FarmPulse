#!/usr/bin/env bash
set -euo pipefail
NS="${1:-farmpulse}"
TS=$(date -u +%Y%m%dT%H%M%S)
velero backup create "farmpulse-$TS" --include-namespaces "$NS" --wait
