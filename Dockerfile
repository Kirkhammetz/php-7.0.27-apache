FROM php:7.0.27-apache

RUN docker-php-source extract
RUN docker-php-ext-install mysqli
RUN docker-php-ext-enable mysqli
RUN docker-php-source delete
RUN apt-get install php7.0-zip

COPY ./php.ini /usr/local/etc/php/

RUN a2enmod rewrite
