{{- define "imagery-processor.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "imagery-processor.labels" -}}
app.kubernetes.io/name: imagery-processor
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: farmpulse
farmpulse.io/domain: drones
{{- end -}}

{{- define "imagery-processor.selectorLabels" -}}
app.kubernetes.io/name: imagery-processor
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
