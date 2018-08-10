FROM php:7.2-apache
RUN apt-get update && apt-get install -y mysql-server
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli

RUN update-rc.d mysql enable
COPY config/php.ini /usr/local/etc/php/