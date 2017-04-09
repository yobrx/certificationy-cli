FROM php:7.0-fpm

RUN apt-get update -qq && apt-get install -y -qq git zip unzip

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
RUN docker-php-ext-enable opcache

RUN echo "date.timezone = Europe/Paris" >> /usr/local/etc/php/conf.d/symfony.ini
RUN echo "Europe/Paris" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata

