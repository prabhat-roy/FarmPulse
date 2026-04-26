{{- define "pest-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "pest-service.labels" -}}
app.kubernetes.io/name: pest-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: farmpulse
farmpulse.io/domain: pest-disease
{{- end -}}

{{- define "pest-service.selectorLabels" -}}
app.kubernetes.io/name: pest-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
