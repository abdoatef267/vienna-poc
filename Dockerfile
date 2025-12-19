FROM alpine:latest

# أول ما يبدأ، يطبع كلمة ويدخل في نوم عميق
RUN echo "Starting Resource Consumption Test..."
# الأمر ده هيخلي الـ Build يفضل شغال لمدة 60 ثانية وبعدين يفشل
# (أحسن من Infinite Loop عشان الـ Pod تموت لوحدها بعد دقيقة ومنوقعش السيرفر)
RUN sleep 60
