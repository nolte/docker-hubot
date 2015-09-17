# Dockerfile
FROM ubuntu:latest

RUN apt-get update
RUN apt-get install nodejs-legacy npm --yes
RUN npm install -g npm


RUN npm install -g yo generator-hubot

RUN useradd -ms /bin/bash hubot

USER hubot
WORKDIR /home/hubot

RUN yo hubot --owner="You" --name="HuBot" --description="HuBot on Docker" --defaults

RUN npm install hubot-irc --save && npm install

#ToDO: http://stackoverflow.com/questions/30657596/remove-heroku-setting-from-hubot
#RUN npm uninstall hubot-heroku-keepalive --save && npm install

ENV HUBOT_IRC_SERVER=irc.freenode.net
ENV HUBOT_IRC_ROOMS="#myhubot-irc"
ENV HUBOT_IRC_NICK="hubibo"


VOLUME /home/hubot/scripts

#COPY ./scripts/firstscript.coffee /home/hubot/scripts/firstscript.coffee

CMD bin/hubot -a irc --name myhubot