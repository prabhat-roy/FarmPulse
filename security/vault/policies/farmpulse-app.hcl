# Default policy for FarmPulse application services.
# Each service consumes its own KV path; Postgres / Redis credentials are dynamic.
path "farmpulse/data/{{identity.entity.aliases.auth_kubernetes_*.metadata.service_account_name}}/*" {
  capabilities = ["read"]
}
path "database/creds/farmpulse-{{identity.entity.aliases.auth_kubernetes_*.metadata.service_account_name}}" {
  capabilities = ["read"]
}
path "transit/encrypt/farmpulse" { capabilities = ["update"] }
path "transit/decrypt/farmpulse" { capabilities = ["update"] }
