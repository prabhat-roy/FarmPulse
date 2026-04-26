{{- define "microclimate-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "microclimate-service.labels" -}}
app.kubernetes.io/name: microclimate-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: farmpulse
farmpulse.io/domain: soil-environment
{{- end -}}

{{- define "microclimate-service.selectorLabels" -}}
app.kubernetes.io/name: microclimate-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
