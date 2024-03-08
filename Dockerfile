FROM php:8.1.5-apache
RUN apt update && apt install -y zlib1g-dev libpng-dev libzip-dev zip unzip curl
RUN docker-php-ext-install gd pdo pdo_mysql exif
RUN a2enmod rewrite
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN pecl install xdebug && docker-php-ext-enable xdebug
WORKDIR /var/www/html
EXPOSE 80
