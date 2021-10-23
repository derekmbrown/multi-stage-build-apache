# 1. Build Composer stage with 'builder' alias
FROM composer AS builder

# 2. Copy over composer files
COPY composer.json /app
COPY composer.lock /app

# 3. Install PHP packages
RUN composer install

# 4. Build PHP/Apache stage
FROM php:7.2-apache

# 5. Copy over index.php
COPY index.php /var/www/html

# 6. Copy over PHP package install files from Composer stage to PHP/Apache stage
COPY --from=builder /app/vendor /var/www/html/vendor

# 7. Start Apache service
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]