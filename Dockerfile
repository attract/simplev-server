FROM attractgrouphub/alpine-php7-nginx-composer

MAINTAINER Amondar

RUN apk --update add supervisor nodejs bash git openssl && \
    npm install npm -g && \
    npm install --global yarn && \
    composer global require "hirak/prestissimo:^0.3"