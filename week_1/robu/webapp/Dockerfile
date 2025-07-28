ARG BASE_IMAGE=php:8.2-apache
FROM ${BASE_IMAGE} as builder

RUN apt-get update && apt-get install -y --no-install-recommends \
    libzip-dev unzip git \
    && docker-php-ext-install mysqli pdo pdo_mysql \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html
COPY . .

FROM ${BASE_IMAGE}

COPY --from=builder /var/www/html /var/www/html

RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
CMD ["apache2-foreground"]
/