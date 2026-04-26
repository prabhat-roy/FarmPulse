{{- define "feed-optimizer.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "feed-optimizer.labels" -}}
app.kubernetes.io/name: feed-optimizer
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: farmpulse
farmpulse.io/domain: livestock
{{- end -}}

{{- define "feed-optimizer.selectorLabels" -}}
app.kubernetes.io/name: feed-optimizer
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
