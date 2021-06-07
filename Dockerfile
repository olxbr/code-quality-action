FROM alpine:3.13

LABEL "com.github.actions.name"="code-quality-action"
LABEL "com.github.actions.description"="Action to run make with: lint, test and coverage"

RUN apk add --update make

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]