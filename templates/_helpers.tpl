{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "helm-chart.name" -}}
{{- printf "%s" .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "helm-chart.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "helm-chart.labels" -}}
helm.sh/chart: {{ include "helm-chart.chart" . }}
{{ include "helm-chart.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Values.image.tag }}
{{- end }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "helm-chart.selectorLabels" -}}
app.kubernetes.io/name: {{ .Release.Name }}
{{- end }}