# Usar la imagen base de PHP con FPM
FROM php:8-fpm

# Instalar las extensiones necesarias para MySQL
RUN docker-php-ext-install pdo pdo_mysql

# Copiar el código fuente
COPY ./src /var/www/html

# Establecer el directorio de trabajo
WORKDIR /var/www/html
