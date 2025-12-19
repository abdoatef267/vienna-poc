FROM alpine:latest

# نزل الأدوات
RUN apk add --no-cache curl wget

# 1. الاتصال المباشر بالـ IP (HTTP)
# استبدل 1.2.3.4 بالـ IP اللي طلعلك من الـ Ping
RUN curl -v http://178.128.212.209/direct-ip-check

# 2. الاتصال المباشر بالـ IP (HTTPS) - مع تجاهل الشهادة
RUN curl -k -v https://178.128.212.209/direct-ip-ssl
