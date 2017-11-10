# vim:set ft=dockerfile:
FROM rabbitmq:3-management
LABEL maintainer="Vitaly Kovalyshyn"

ENV WEBITEL_MAJOR 3
ENV WEBITEL_REPO_BASE https://github.com/webitel

ADD https://dl.bintray.com/rabbitmq/community-plugins/rabbitmq_delayed_message_exchange-0.0.1.ez /usr/lib/rabbitmq/plugins/rabbitmq_delayed_message_exchange-0.0.1.ez
RUN chmod -R 777 /usr/lib/rabbitmq/plugins && rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange
