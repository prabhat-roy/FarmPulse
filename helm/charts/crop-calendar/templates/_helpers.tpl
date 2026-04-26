{{- define "crop-calendar.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "crop-calendar.labels" -}}
app.kubernetes.io/name: crop-calendar
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: farmpulse
farmpulse.io/domain: farm-management
{{- end -}}

{{- define "crop-calendar.selectorLabels" -}}
app.kubernetes.io/name: crop-calendar
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
