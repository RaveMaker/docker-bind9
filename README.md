# Docker: bind9 DNS server

A simple setup of bind9 with master/slave support

docker-compose.yml file supports **two profiles for two seperate docker hosts**:

> docker compose --profile master up -d

> docker compose --profile slave up -d


## Docker profile - master

edit the following files to suit your needs:

- `etc/named-master.conf`
- `zones/db*`

make sure to edit the entrypoint and change the domain name for bind zone validation check:

- `entrypoint/named.update`

## Docker profile - slave

edit the following files to suit your needs:

- `etc/named-slave.conf`

## Entrypoint

The entrypoint file `named.update` will update the serial of the zones in the master node.
If you prefer to update the serial manually replace the entrypoint in the `docker-compose.yml` file to the same one as the slaves entrypoint.

## Debug

You can change one of the command parameters in `docker-compose.yml` from "-f" to "-g" to get the output to docker instead of the log files.

Author: [RaveMaker][RaveMaker].

[RaveMaker]: http://ravemaker.net
