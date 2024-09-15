# Use php:7.4-apache as the base image
FROM php:7.4-apache

# Install necessary PHP extensions and required tools
RUN docker-php-ext-install mysqli

# Copy application source code to /var/www/html/
COPY ./learning-app-ecommerce /var/www/html/

# Install git to enable cloning the repository if needed
RUN apt-get update && apt-get install -y git

# Create the .env file with database connection details pointing to the Kubernetes service
RUN echo "DB_HOST=mysql-service\nDB_USER=ecomuser\nDB_PASSWORD=ecompassword\nDB_NAME=ecomdb" > /var/www/html/.env

# Update database connection strings in index.php to load environment variables from the .env file
RUN sed -i '/\/\/ Retrieve the database connection details from environment variables/a loadEnv(__DIR__ . \"/.env\");' /var/www/html/index.php

# Expose port 80 to allow traffic to the web server
EXPOSE 80

# Start Apache service
CMD ["apache2-foreground"]
