FROM php:8.2-apache

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli \
    && docker-php-ext-install pdo pdo_mysql

COPY . /var/www/html/
