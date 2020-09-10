FROM php:7.4.9-apache-buster
RUN apt-get update \
  && apt-get install -y --no-install-recommends libpq-dev \
  && docker-php-ext-install mysqli pdo_pgsql pdo_mysql \
  && mv "/usr/local/etc/php/php.ini-development" "/usr/local/etc/php/php.ini"
