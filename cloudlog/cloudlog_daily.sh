#! /bin/bash


cd /var/www/html
# Update the Cloudlog installation every day at midnight
/var/www/html/update_cloudlog.sh
# Restore the permissions as they were before
chown -R root:www-data /var/www/html
chmod -R g+rw /var/www/html
chmod +x /var/www/html/update_cloudlog.sh
rm -rf /var/www/html/install
cd $(dirname $0)
