FROM node:16
MAINTAINER "thundersquared" <containers@thundersquared.com>

COPY config /app/config
COPY entrypoint.sh /app/entrypoint.sh
COPY package.json /app/package.json
COPY plugins /app/plugins
COPY startup.1.d /app/startup.1.d
COPY yarn.lock /app/yarn.lock

WORKDIR /app

RUN set -eux && \
        yarn

ENTRYPOINT /app/entrypoint.sh
