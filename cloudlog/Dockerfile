FROM php:7-apache

# Use the default production configuration
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# Update the apt package index
RUN apt-get update
RUN apt-get upgrade -y

# Install necessary packages
RUN apt-get install git -y
RUN apt-get install cron -y
RUN apt-get install libcurl4-openssl-dev -y
RUN apt-get install libonig-dev -y
RUN apt-get install libxml2-dev -y

# Install required packages for PHP
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install curl
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install xml

RUN docker-php-ext-enable mysqli
RUN docker-php-ext-enable curl
RUN docker-php-ext-enable mbstring
RUN docker-php-ext-enable xml

# Define a workspace
WORKDIR /workspace

# Get the files in
COPY . .
# Make scripts executable
RUN chmod +x initial_permissions.sh

# Clone the repository directly into /var/www/html
RUN git clone https://github.com/magicbug/Cloudlog.git /var/www/html

# Fix permissions
RUN ./initial_permissions.sh
RUN chmod +x /var/www/html/update_cloudlog.sh

# Add .htaccess file
COPY .htaccess /var/www/html/.htaccess

# Register the cronjobs
COPY cloudlog-cronjobs /etc/cron.d/cloudlog-cronjobs
RUN chmod 0644 /etc/cron.d/cloudlog-cronjobs
RUN crontab /etc/cron.d/cloudlog-cronjobs
