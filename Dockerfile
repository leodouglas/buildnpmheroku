FROM ubuntu:16.04
RUN curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN apt-get install -y wget

RUN wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
VOLUME /root /tmp