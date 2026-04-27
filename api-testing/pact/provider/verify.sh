#!/usr/bin/env bash
set -euo pipefail
pact-provider-verifier https://pact-broker.farmpulse.internal \
  --provider farmpulse_identity_service \
  --provider-base-url http://identity-service.farmpulse.svc:50060 \
  --provider-version "${GIT_SHA:-local}" \
  --publish-verification-results
