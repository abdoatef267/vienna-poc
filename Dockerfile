FROM alpine:latest
RUN apk add --no-cache curl

# محاولة الاتصال بخدمة داخلية مشهورة (زي Kubernetes API)
# لو الأمر خد وقت طويل (Timeout)، يبقى فيه Firewall داخلي بيوقع الباكت (Drop)
# لو الأمر خلص بسرعة (Connection Refused)، يبقى البورت مقفول (Reset)
# الفرق في الوقت ده هو دليلك
RUN curl -k -v https://kubernetes.default.svc:443
