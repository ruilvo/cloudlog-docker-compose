FROM php:7.4-apache

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install git -y
RUN apt-get install cron -y

RUN docker-php-ext-install mysqli

WORKDIR /workspace

RUN git clone https://github.com/magicbug/Cloudlog.git

RUN cp -r /workspace/Cloudlog/* /var/www/html/

RUN chown -R root:www-data /var/www/html/application/config/
RUN chown -R root:www-data /var/www/html/assets/qslcard/
RUN chown -R root:www-data /var/www/html/backup/
RUN chown -R root:www-data /var/www/html/updates/
RUN chown -R root:www-data /var/www/html/uploads/
RUN chown -R root:www-data /var/www/html/images/eqsl_card_images/
RUN chmod -R g+rw /var/www/html/application/config/
RUN chmod -R g+rw /var/www/html/assets/qslcard/
RUN chmod -R g+rw /var/www/html/backup/
RUN chmod -R g+rw /var/www/html/updates/
RUN chmod -R g+rw /var/www/html/uploads/
RUN chmod -R g+rw /var/www/html/images/eqsl_card_images/

COPY update-cloudlog.sh update-cloudlog.sh
RUN chmod +x update-cloudlog.sh

COPY cloudlog-cronjobs /etc/cron.d/cloudlog-cronjobs
RUN chmod 0644 /etc/cron.d/cloudlog-cronjobs
RUN crontab /etc/cron.d/cloudlog-cronjobs
