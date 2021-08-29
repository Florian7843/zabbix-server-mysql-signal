ARG ZABBIX_VERSION
FROM zabbix/zabbix-server-mysql:$ZABBIX_VERSION
VOLUME [ "/var/lib/zabbix/.local/share/signal-cli" ]

USER root

# Download dependencies
RUN apt update && apt install openjdk-11-jre -y

# Install signal-cli
ARG SIGNAL_CLI_VERSION
RUN wget https://github.com/AsamK/signal-cli/releases/download/v"${SIGNAL_CLI_VERSION}"/signal-cli-"${SIGNAL_CLI_VERSION}".tar.gz
RUN tar xf signal-cli-"${SIGNAL_CLI_VERSION}".tar.gz -C /opt
RUN ln -sf /opt/signal-cli-"${SIGNAL_CLI_VERSION}"/bin/signal-cli /usr/local/bin/
RUN rm signal-cli-"${SIGNAL_CLI_VERSION}".tar.gz

USER 1997
