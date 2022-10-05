{{- define "appName.name" -}}
{{- default .Values.app_name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "appName.selectorLabels" -}}
app.kubernetes.io/name: {{ include "appName.name" . }}
{{- end -}}

{{- define "appName.shortname" -}}
{{- default .Values.shortname -}}
{{- end -}}