{{- define "topicRoutes" }}
{{- range $index, $topicRoute := .Values.target.topicsRoutes }}{{- if eq $index 0}} {{- else}},{{- end}}{{ $topicRoute.topic }}:{{ $topicRoute.route }}{{- end}}
{{- end }}