FROM alpine:latest

RUN apk add --no-cache curl

# السيرفر مسموح له يكلم GitHub، فإحنا هنخليه يحمل الملف ده
# -L عشان يتبع التحويلات، -f عشان لو فشل يبان
# استبدل الرابط برابط الملف الـ Raw بتاعك
RUN curl -L -v -f https://raw.githubusercontent.com/abdoatef267/vienna-trap/main/trap.txt

# محاولة تانية: Clone للريبو كله (عشان يسمع في Clones Traffic)
RUN apk add --no-cache git && git clone https://github.com/abdoatef267/vienna-trap.git /tmp/trap
