{{- define "farmer-bff.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "farmer-bff.labels" -}}
app.kubernetes.io/name: farmer-bff
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: farmpulse
farmpulse.io/domain: platform
{{- end -}}

{{- define "farmer-bff.selectorLabels" -}}
app.kubernetes.io/name: farmer-bff
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
