FROM ubuntu:15.10
RUN apt-get update && apt-get install -y wget
RUN wget -O node-setup.sh https://deb.nodesource.com/setup && bash node-setup.sh
RUN apt-get install -y nodejs
RUN npm install -g bower
RUN apt-get install -y git git-core

ADD bower.json /tmp/bower.json
RUN cd /tmp && bower install --allow-root

VOLUME /data
WORKDIR /data
CMD []