# Use official PHP image with Apache
FROM php:8.1-apache

# Install MySQLi extension test comment
RUN docker-php-ext-install mysqli

# Enable MySQLi extension
RUN docker-php-ext-enable mysqli

# Copy application files
COPY src/ /var/www/html/

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html/
RUN chmod -R 755 /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]
