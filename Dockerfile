# Mesos Slave
#
# VERSION       1

FROM thefactory/mesos

MAINTAINER Mike Babineau mike@thefactory.com

USER root
EXPOSE 5051

ENTRYPOINT ["/usr/local/sbin/mesos-slave"]