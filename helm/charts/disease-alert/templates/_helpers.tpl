{{- define "disease-alert.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "disease-alert.labels" -}}
app.kubernetes.io/name: disease-alert
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: farmpulse
farmpulse.io/domain: pest-disease
{{- end -}}

{{- define "disease-alert.selectorLabels" -}}
app.kubernetes.io/name: disease-alert
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
