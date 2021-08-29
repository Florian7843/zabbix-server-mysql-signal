# zabbix-server-mysql-signal
This is a docker image based on zabbix-server-mysql (ubuntu) with a signal alert-script preinstalled.

## Installation
You start this container just like https://hub.docker.com/r/zabbix/zabbix-server-mysql, but you should mount `/root/.local/share/signal-cli` to the host, because it contains all data of the attached account.

You'll still need to configure signal-cli according to https://github.com/AsamK/signal-cli/wiki/Quickstart#set-up-an-account or link an existing account as described in https://github.com/AsamK/signal-cli/wiki/Linking-other-devices-(Provisioning).

To execute these commands you can eighter attach to the container with `docker attach <container>` or execute commands like `docker exec <container> <command>`.