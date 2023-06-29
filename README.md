# docker-bind9

This is a simple setup of bind9 with master/slave support

## Docker profile - master

edit the following files to suit your needs:

- etc/named-master.conf
- zones/db*

make sure to edit the entrypoint and change the domain name for bind zone validation check:

- entrypoint/named.update

## Docker profile - slave

edit the following files to suit your needs:

- etc/named-slave.conf
