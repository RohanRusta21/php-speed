# Use a PHP base image
FROM php:7.4-apache

# Install necessary dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        python3 \
        python3-pip \
    && pip3 install speedtest-cli

# Copy the PHP code into the container
COPY . /var/www/html

# Set the working directory
WORKDIR /var/www/html

# Expose the port
EXPOSE 80

# Start the Apache web server
CMD ["apache2-foreground"]
