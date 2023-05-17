# Use an official PHP runtime as the base image
FROM php:7.4-apache

# Copy the code files to the web server's document root
COPY /usr/bin/speedtest-cli /usr/bin/speedtest-cli
COPY . /var/www/html


# Expose port 80 to allow incoming HTTP traffic
EXPOSE 80

# Start the Apache web server when the container starts
CMD ["apache2-foreground"]
