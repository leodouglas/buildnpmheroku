FROM node:4.4.4
RUN apt-get update && apt-get install -y wget
RUN apt-get install ruby-full
RUN wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
VOLUME /root /tmp
