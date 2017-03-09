FROM attractgrouphub/alpine-php7-nginx-composer

MAINTAINER Amondar

RUN apk --update add supervisor nodejs bash git openssl-dev g++ autoconf && \
    npm install npm -g && \
    npm install --global yarn && \
    composer global require "hirak/prestissimo:^0.3"

# Install mongo
RUN pecl install mongodb
RUN echo "extension=mongodb.so" > /usr/local/etc/php/conf.d/mongodb.ini
RUN apk del --no-cache autoconf g++