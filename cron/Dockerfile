FROM ubuntu:latest AS Cron

## Setup ##
RUN apt-get update -qq && apt-get install -y wget gnupg2

## Cron ##
RUN apt-get install -y cron

ADD crontab /etc/cron.d/simple-cron

ADD cron_script.sh /script.sh
RUN chmod +x /script.sh

RUN chmod 0644 /etc/cron.d/simple-cron

RUN touch /var/log/cron.log

ENTRYPOINT ["cron", "-f"]