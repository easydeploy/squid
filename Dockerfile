FROM ubuntu:14.04
MAINTAINER neil@cazcade.com

RUN apt-get update
RUN apt-get install -y squid3
ADD squid.conf /etc/squid3/squid.conf
# Make cache dirs 
RUN squid -z -F

EXPOSE 3128

# -X verbose debug logging
# -N Don't run in daemon mode - important for docker
CMD /usr/sbin/squid3 -N -X

