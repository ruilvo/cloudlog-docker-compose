# https://github.com/magicbug/Cloudlog/wiki/Installation#3-set-directory-ownership-and-permissions

# First, set ownership using:
chown -R root:www-data /var/www/html/application/config/
chown -R root:www-data /var/www/html/application/logs/
chown -R root:www-data /var/www/html/assets/qslcard/
chown -R root:www-data /var/www/html/backup/
chown -R root:www-data /var/www/html/updates/
chown -R root:www-data /var/www/html/uploads/
chown -R root:www-data /var/www/html/images/eqsl_card_images/

# Then grant write permissions on these directories to the group:
chmod -R g+rw /var/www/html/application/config/
chmod -R g+rw /var/www/html/application/logs/
chmod -R g+rw /var/www/html/assets/qslcard/
chmod -R g+rw /var/www/html/backup/
chmod -R g+rw /var/www/html/updates/
chmod -R g+rw /var/www/html/uploads/
chmod -R g+rw /var/www/html/images/eqsl_card_images/

# Update script executable 
chmod +x /var/www/html/update_cloudlog.sh

