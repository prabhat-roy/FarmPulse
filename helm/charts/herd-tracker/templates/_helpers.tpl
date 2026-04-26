{{- define "herd-tracker.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "herd-tracker.labels" -}}
app.kubernetes.io/name: herd-tracker
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: farmpulse
farmpulse.io/domain: livestock
{{- end -}}

{{- define "herd-tracker.selectorLabels" -}}
app.kubernetes.io/name: herd-tracker
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
