{{- define "kafka-store-bootstrap-servers" -}}
{{- $dns :=  printf "%s-headless-svc" .Values.kafkaBroker.name  -}}
{{- $port := .Values.kafkaBroker.port | toString -}}
{{- printf "%s.%s.%s:%s" $dns .Release.Namespace "svc.cluster.local" $port | quote  -}}
{{- end -}}

{{- define "kafka-registry-listeners" -}}
{{- $host := "http://0.0.0.0" -}}
{{- $port := .Values.service.internalPort | toString -}}
{{- printf "%s:%s" $host $port | quote -}}
{{- end -}}