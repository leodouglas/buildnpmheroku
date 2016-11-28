FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y wget
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y nodejs

RUN wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
VOLUME /root /tmp