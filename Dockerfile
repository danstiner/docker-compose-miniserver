FROM mazzolino/armhf-ubuntu:14.04

RUN apt-get update && apt-get install -y --force-yes curl

ADD duckdns /etc/cron.hourly/

CMD ["cron", "-f"]
