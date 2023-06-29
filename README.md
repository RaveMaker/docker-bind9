# docker-bind9

This is a simple setup of bind9 with master/slave support

docker-compose.yml file supports **two profiles for two seperate docker hosts**:

> docker compose --profile master up -d

> docker compose --profile slave up -d

## Docker profile - master

edit the following files to suit your needs:

- etc/named-master.conf
- zones/db*

make sure to edit the entrypoint and change the domain name for bind zone validation check:

- entrypoint/named.update

## Docker profile - slave

edit the following files to suit your needs:

- etc/named-slave.conf
