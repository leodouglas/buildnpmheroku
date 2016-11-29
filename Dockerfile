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

ADD /ssh/id_rsa ~/.ssh/id_rsa
ADD /ssh/id_rsa.pub ~/.ssh/id_rsa.pub
ADD /ssh/known_hosts ~/.ssh/known_hosts

VOLUME /root /tmp