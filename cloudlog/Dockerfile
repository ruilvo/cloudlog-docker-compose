FROM php:7.4-apache

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

# Define a workspace
WORKDIR /workspace

# Get the files in
COPY . .
# Make scripts executable
RUN chmod +x cloudlog_daily.sh
RUN chmod +x cloudlog_hourly.sh
RUN chmod +x cloudlog_weekly.sh
RUN chmod +x run_cronjobs.sh
# Get a file for the cronjob logs
RUN touch cronjob_logs.txt

# Clone the repository directly into /var/www/html
RUN git clone https://github.com/magicbug/Cloudlog.git /var/www/html

# Fix permissions
# This is possibly insecure but I couldn't be bothered to find a better way
# The guide in:
# https://github.com/magicbug/Cloudlog/wiki/Installation#3-set-directory-ownership-and-permissions
# Made so that updating SOTA information and etc didn't work...
RUN chown -R root:www-data /var/www/html
RUN chmod -R g+rw /var/www/html
# Plus make this executable
RUN chmod +x /var/www/html/update_cloudlog.sh

# Register the cronjobs
COPY cloudlog-cronjobs /etc/cron.d/cloudlog-cronjobs
RUN chmod 0644 /etc/cron.d/cloudlog-cronjobs
RUN crontab /etc/cron.d/cloudlog-cronjobs
