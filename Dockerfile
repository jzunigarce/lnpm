# Usar la imagen base de PHP con FPM
FROM php:8-fpm


RUN apt-get update && apt-get install -y libzip-dev zip unzip \
    && docker-php-ext-configure zip \ 
    && docker-php-ext-install zip \
    && docker-php-ext-install pdo pdo_mysql

# Copiar el código fuente
COPY ./src /var/www/html

# Establecer el directorio de trabajo
WORKDIR /var/www/html
