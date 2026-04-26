{{- define "spray-recommendation.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "spray-recommendation.labels" -}}
app.kubernetes.io/name: spray-recommendation
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: farmpulse
farmpulse.io/domain: pest-disease
{{- end -}}

{{- define "spray-recommendation.selectorLabels" -}}
app.kubernetes.io/name: spray-recommendation
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
