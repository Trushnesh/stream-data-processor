{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "stream-data-processor.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}


{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "stream-data-processor.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}



{{/*
Labels
*/}}
{{- define "stream-data-processor.labels" }}
{{- include "stream-data-processor.selectorLabels" . }}
  app.kubernetes.io/version: {{ include "stream-data-processor.chart" . | quote }}
  app.kubernetes.io/managed-by: {{ .Release.Service | quote  }}
{{- end }}

{{/*
Selector labels.
*/}}
{{- define "stream-data-processor.selectorLabels" }}
  app.kubernetes.io/name: {{ include "stream-data-processor.name" . | quote }}
  app.kubernetes.io/instance: {{ .Release.Name | quote }}
{{- end }}
