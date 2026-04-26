{{- define "ndvi-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "ndvi-service.labels" -}}
app.kubernetes.io/name: ndvi-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: farmpulse
farmpulse.io/domain: drones
{{- end -}}

{{- define "ndvi-service.selectorLabels" -}}
app.kubernetes.io/name: ndvi-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
