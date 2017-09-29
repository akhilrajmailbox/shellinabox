FROM akhilrajmailbox/ldap-client:latest
MAINTAINER Akhil Raj <akhil@vivasa.in>

RUN apt-get update && apt-get install -y shellinabox
ADD start.sh /root/start.sh
RUN chmod 700 /root/start.sh
WORKDIR /root/

ENTRYPOINT "/root/start.sh"
