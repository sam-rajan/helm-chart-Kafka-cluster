{{- define "zookeeper-service.name" -}}
{{- $name := "kafka-zookeeper-svc.%s.svc.cluster.local" -}}
{{- printf $name .Release.Namespace -}}
{{- end -}}