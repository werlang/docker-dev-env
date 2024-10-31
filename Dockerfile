FROM php:8.1.5-apache

# Install dependencies and PHP extensions
RUN apt update && \
    apt install -y zlib1g-dev libpng-dev libzip-dev zip unzip curl && \
    docker-php-ext-install gd pdo pdo_mysql exif && \
    pecl install xdebug && docker-php-ext-enable xdebug && \
    a2enmod rewrite && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    apt clean && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html
EXPOSE 80
