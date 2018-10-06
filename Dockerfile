FROM node:8.12-alpine as node-angular-cli

LABEL authors="John Papa"

#Linux setup
RUN apk update \
  && apk add --update alpine-sdk \
  && apk del alpine-sdk \
  && apk add --no-cache git \
  && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \
  && npm cache verify \
  && sed -i -e "s/bin\/ash/bin\/sh/" /etc/passwd 

RUN git config --global user.email "root@docker"
RUN git config --global user.name "Docker"

#Angular CLI
RUN npm install -g @angular/cli
