FROM debian:jessie
MAINTAINER yohann.marillet@gmail.com
ENTRYPOINT ["/bin/bash", "-c"]
ENV TERM=xterm
RUN apt-get update \
    && apt-get clean \
    && echo "nameserver 8.8.8.8" | tee /etc/resolv.conf > /dev/null  \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y wget python-setuptools nano unzip \
    && cd ~ \
    && wget http://terraria.org/server/terraria-server-linux-1308.tar.gz \
    && tar xzf terraria-server-linux-1308.tar.gz
RUN mkdir /root/worlds
VOLUME /root/worlds
ADD env/init.sh /usr/local/bin/init.sh
ADD env/serverconfig.txt /root/terraria-server-linux-1308/serverconfig.txt
CMD ["/usr/local/bin/init.sh"]
