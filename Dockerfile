FROM ubuntu
MAINTAINER neil@cazcade.com

RUN apt-get install -y squid
ADD squid.conf /etc/squid/squid.conf
# Make cache dirs 
RUN squid -z -F

EXPOSE 3128

# -X verbose debug logging
# -N Don't run in daemon mode - important for docker
CMD squid -N -X

