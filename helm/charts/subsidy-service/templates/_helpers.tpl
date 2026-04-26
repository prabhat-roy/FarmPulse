{{- define "subsidy-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "subsidy-service.labels" -}}
app.kubernetes.io/name: subsidy-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: farmpulse
farmpulse.io/domain: finance
{{- end -}}

{{- define "subsidy-service.selectorLabels" -}}
app.kubernetes.io/name: subsidy-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
