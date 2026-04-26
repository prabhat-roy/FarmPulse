GET https://api.farmpulse.com/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"
