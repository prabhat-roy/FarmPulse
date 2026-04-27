# Health check for all critical services
GET https://farmpulse.internal/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"

GET https://api.farmpulse.internal/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"
