#!/bin/bash

cd /workspace/Cloudlog

git pull

chown -R root:www-data /var/www/html/application/config/
chown -R root:www-data /var/www/html/assets/qslcard/
chown -R root:www-data /var/www/html/backup/
chown -R root:www-data /var/www/html/updates/
chown -R root:www-data /var/www/html/uploads/
chown -R root:www-data /var/www/html/images/eqsl_card_images/
chmod -R g+rw /var/www/html/application/config/
chmod -R g+rw /var/www/html/assets/qslcard/
chmod -R g+rw /var/www/html/backup/
chmod -R g+rw /var/www/html/updates/
chmod -R g+rw /var/www/html/uploads/
chmod -R g+rw /var/www/html/images/eqsl_card_images/
