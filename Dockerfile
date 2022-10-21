FROM php:7.0-fpm
WORKDIR /var/www
RUN docker-php-ext-install pdo_mysql
COPY ./www/html/ /var/www/html
EXPOSE 9000
CMD ["php-fpm"]