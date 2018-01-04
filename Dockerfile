# vim:set ft=dockerfile:
FROM rabbitmq:3.7-management-alpine
LABEL maintainer="Vitaly Kovalyshyn"

ENV WEBITEL_MAJOR 3
ENV WEBITEL_REPO_BASE https://github.com/webitel

ADD https://dl.bintray.com/rabbitmq/community-plugins/3.7.0/rabbitmq_delayed_message_exchange-3.7.0.zip /usr/lib/rabbitmq/plugins/
RUN chmod -R 777 /usr/lib/rabbitmq/plugins && rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange
