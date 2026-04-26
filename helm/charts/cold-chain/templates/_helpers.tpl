{{- define "cold-chain.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "cold-chain.labels" -}}
app.kubernetes.io/name: cold-chain
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: farmpulse
farmpulse.io/domain: harvest
{{- end -}}

{{- define "cold-chain.selectorLabels" -}}
app.kubernetes.io/name: cold-chain
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
