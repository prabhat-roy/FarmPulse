{{- define "satellite-analytics.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "satellite-analytics.labels" -}}
app.kubernetes.io/name: satellite-analytics
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: farmpulse
farmpulse.io/domain: analytics
{{- end -}}

{{- define "satellite-analytics.selectorLabels" -}}
app.kubernetes.io/name: satellite-analytics
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
