# Base image PHP FPM
FROM php:8.3-fpm

# Install Laravel's dependencies
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    libzip-dev \
    && docker-php-ext-install pdo pdo_mysql zip

# Install Composer from official image (Cleaner)
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Set work dir inside container
WORKDIR /var/www/html

# Copy custom PHP configuration file
COPY ./docker/php.ini /usr/local/etc/php/conf.d/php.ini

# # Exponer el puerto del servicio PHP-FPM (no se usa con artisan serve, pero útil si lo conectas a Nginx)
# EXPOSE 9000

# # Comando por defecto cuando el contenedor arranca
# CMD ["php-fpm"]

COPY ./docker/entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
