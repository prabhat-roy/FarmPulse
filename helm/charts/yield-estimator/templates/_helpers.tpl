{{- define "yield-estimator.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "yield-estimator.labels" -}}
app.kubernetes.io/name: yield-estimator
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: farmpulse
farmpulse.io/domain: crop
{{- end -}}

{{- define "yield-estimator.selectorLabels" -}}
app.kubernetes.io/name: yield-estimator
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
