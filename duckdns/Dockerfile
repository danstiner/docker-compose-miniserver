FROM alpine:latest

RUN apk --no-cache add curl

ADD crontab /etc/crontabs/root
ADD entrypoint.sh /app/
ADD duckdns.sh /app/

ENTRYPOINT /app/entrypoint.sh
