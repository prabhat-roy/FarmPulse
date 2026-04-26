{{- define "flight-planner.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "flight-planner.labels" -}}
app.kubernetes.io/name: flight-planner
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: farmpulse
farmpulse.io/domain: drones
{{- end -}}

{{- define "flight-planner.selectorLabels" -}}
app.kubernetes.io/name: flight-planner
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
