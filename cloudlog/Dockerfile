FROM php:7-apache

# Use the default production configuration
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# Update the apt package index
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    cron \
    git \
    libcurl4-openssl-dev \
    libonig-dev \
    libxml2-dev \
    nano \
    && rm -rf /var/lib/apt/lists/*

# Install required packages for PHP
RUN docker-php-ext-install \
    mysqli \
    curl \
    mbstring \
    xml

# Define a workspace
WORKDIR /var/www/html

# Clone the repository directly into /var/www/html
RUN git clone https://github.com/magicbug/Cloudlog.git .

# Add script and htaccess
COPY initial_permissions.sh \
     .htaccess \
     ./

# Fix permissions
RUN chmod 0755 initial_permissions.sh && ./initial_permissions.sh

# Register the cronjobs
COPY cloudlog-cronjobs /etc/cron.d/cloudlog-cronjobs
RUN chmod 0644 /etc/cron.d/cloudlog-cronjobs && crontab /etc/cron.d/cloudlog-cronjobs

# Configure git
RUN git config --global --add safe.directory /var/www/html && git config --global pull.ff only

