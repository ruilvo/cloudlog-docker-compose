#! /bin/bash

# Update the Cloudlog installation every day at midnight
cd /var/www/html
/var/www/html/update_cloudlog.sh
cd $(dirname $0)
