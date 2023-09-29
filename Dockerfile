# Use an official Apache image as the base image
FROM php:7.4-apache

# Set environment variables for PHP
ENV WORDPRESS_DB_HOST=db
ENV WORDPRESS_DB_USER=root
ENV WORDPRESS_DB_PASSWORD=root
ENV WORDPRESS_DB_NAME=wordpress

# Install necessary dependencies and PHP extensions
RUN apt-get update && \
    apt-get install -y libpng-dev libjpeg-dev libfreetype6-dev zip unzip && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install gd mysqli pdo pdo_mysql

# Enable Apache mod_rewrite module for WordPress
RUN a2enmod rewrite

# Download and install WordPress
WORKDIR /var/www/html
RUN curl -o latest.tar.gz https://wordpress.org/latest.tar.gz && \
    tar -xzvf latest.tar.gz && \
    rm latest.tar.gz && \
    chown -R www-data:www-data wordpress

# Expose port 80 for Apache
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]