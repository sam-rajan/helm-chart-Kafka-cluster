{{- define "kafka-headless-service.name" -}}
{{- $name := "headless-svc" -}}
{{- printf "%s-%s" .Chart.Name $name -}}
{{- end -}}

{{- define "kafka-headless-service.dns" -}}
{{- $dns := (include "kafka-headless-service.name" .) -}}
{{- printf "%s.%s.%s" $dns .Release.Namespace "svc.cluster.local" -}}
{{- end -}}

{{- define "zookeeper-service.name" -}}
{{- $name := "kafka-zookeeper-svc.%s.svc.cluster.local" -}}
{{- printf $name .Release.Namespace -}}
{{- end -}}