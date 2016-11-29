FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y wget
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y nodejs

RUN echo "deb http://toolbelt.heroku.com/ubuntu ./" > /etc/apt/sources.list.d/heroku.list
RUN wget -O- https://toolbelt.heroku.com/apt/release.key | apt-key add -
RUN apt-get update
RUN apt-get install -y heroku-toolbelt
RUN apt-get install -y ruby

RUN mkdir -p ~/.ssh
COPY ssh/id_rsa ~/.ssh/id_rsa
COPY ssh/id_rsa.pub ~/.ssh/id_rsa.pub
COPY ssh/known_hosts ~/.ssh/known_hosts

VOLUME /root /tmp