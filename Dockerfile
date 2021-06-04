FROM alpine:3.13

RUN apk add --update make

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]