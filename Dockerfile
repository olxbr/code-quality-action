FROM alpine:3.13

RUN apk add --update make

COPY entrypoint.sh .
ENTRYPOINT ["./entrypoint.sh"]
