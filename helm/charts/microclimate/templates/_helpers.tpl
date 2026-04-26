{{- define "microclimate.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "microclimate.labels" -}}
app.kubernetes.io/name: microclimate
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: farmpulse
farmpulse.io/domain: soil-environment
{{- end -}}

{{- define "microclimate.selectorLabels" -}}
app.kubernetes.io/name: microclimate
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
