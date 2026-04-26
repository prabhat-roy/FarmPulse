{{- define "mandi-integration.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "mandi-integration.labels" -}}
app.kubernetes.io/name: mandi-integration
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: farmpulse
farmpulse.io/domain: market
{{- end -}}

{{- define "mandi-integration.selectorLabels" -}}
app.kubernetes.io/name: mandi-integration
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
