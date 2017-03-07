FROM attractgrouphub/alpine-php7-nginx-composer

MAINTAINER Amondar

RUN apk upgrade --update && apk add composer supervisor nodejs bash git make g++ openssl \
    php7-fpm php7-mysqli php7-pdo_mysql php7-pdo_sqlite \
    php7-mcrypt php7-ctype php7-xml php7-pcntl php7-exif php7-gd php7-zip && \
    rm -rf /var/cache/apk/* && \
    npm install npm@latest -g && \
    npm install --global yarn && \
    composer global require "hirak/prestissimo:^0.3"