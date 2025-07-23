FROM php:8.2-apache

WORKDIR /var/www/html

COPY webapp/ .

RUN apt-get update && apt-get install -y \
    curl \
 && rm -rf /var/lib/apt/lists/*

RUN adduser --disabled-password --gecos "" appuser
USER appuser


